Return-Path: <devicetree+bounces-49700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C8C87772C
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 14:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C42A281471
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 13:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C382C853;
	Sun, 10 Mar 2024 13:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="ZLy9zNvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4262E2C6AA
	for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 13:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710078406; cv=none; b=OeqZvxJj/Majd9Ycy0Kk29y9pDXYgqajDh7s7yXM+P5vlvwragLt2W2XBHRW7IB89NLckGiTqPr2TnvDyjH4CWsI55HICaSMR5qINP6iQE6R7T4HqpiyRpup0DohoXEEMd4llQRi3D0Z7bIPnY09EJOpHU9x68AS6dQjSbkD43c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710078406; c=relaxed/simple;
	bh=21TZ94M2hJQwewiQCyQkESYIMjmxHLmhH5NzgOqAASA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JPoVpvafOyC226efbLVgFRRCnAEi9frvixWRCbi5GOyXwVS5hfUZbrd5mesbxZ68f1DAc2RBH1DMJiGY98XkGqGrUNRUG/1B37Bx6GzRhMexlTIsDVhZZ1r4E5YI58i+EGW6rURZmzXrDLXoyhs2gypn2r1BBl+vYz8/RHxspQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=ZLy9zNvw; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5135486cfccso2834756e87.0
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 06:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1710078400; x=1710683200; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JdzMv7+p7TMmz2+FgD6x3o47JgLEb4EyxYxDSxikpq8=;
        b=ZLy9zNvwyEwOknSuR0sQUIytlA52lkybgLor7v4i29gtOIQvWT6NyO1BwqRQlbsV5j
         qwguYExGXsGhVRIZI04WzvuNmCs3ji2ehqn4TowKCIh1tLhX3LWLNBpOTt2gmxMq7QHE
         9K5IjsI0sU2CXV07NW9NpU7BuqBnGAL3YNyMERft2rzd0nQmFQsz/N9rHOScHTdHmfEU
         q+DAg+cLSGOd/rcn5Bl2noQHE9xTxmuBijuMnOA+IUjACI6ysDgSDCF54yE/Znca7a4D
         Z/kZ4ZgCz2TJy5FJPC5YR9oNTR8FFbuHEG8J2my1elMe15I63F1l7ad8a5EuZjr1kXmM
         9FGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710078400; x=1710683200;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JdzMv7+p7TMmz2+FgD6x3o47JgLEb4EyxYxDSxikpq8=;
        b=E5HJbZGhtST+P1nqmxU5hgB2L3kj/LBolT0sWgV+w7Xivhmb6LNgWVxcW/GE4Z9a6s
         Wyz5mVyXpCoIaid0NF+XlYP8fMhkeLa6M7NscJi7VH5jFyTt9jpz36yqBsx5XrOhCnlX
         osW66GzabBMY7VCW2j37k714Hl1lvr5zRu+E+xzZHe5noshwV4wZGKUOMFL3qkZhev4m
         P7XrufMZqh5Quh61GNTy0XYdAry0KzB3vMRpgFpgsdTcyPbZ/9r4yWyY5urO3pDetfKb
         GsbNPWEQv3jLhsKQ+4y/X9OBuxDAI29XS3MHp223CDFp6PDUrDV5XaKyVEyIiegqoyLX
         eDSw==
X-Forwarded-Encrypted: i=1; AJvYcCWb43QeAtAAFXkr99cMNKqUs8nwbU5G/4g4Gl/u21l8SZGvizmDbX6TqNLGOVXIaYfK3OnW7nAGsuFhfit0luWFBihlBw9dGygUIA==
X-Gm-Message-State: AOJu0YzvtqsuUmY5ECgTtDYNEn9NURXGxcXuIrjlI0eqnN7+z13BAzdz
	qg0S+hkwn4e64rliLYKP8wtite6BGLcjz8a+biwoSwD4QmEHnIG6uF5j1mlgmVM=
X-Google-Smtp-Source: AGHT+IG3kp11nPWGWFj8js+ydDFBDe1MFC7OGap0e5Cy99srts4Qp37KpmMFPmbKnmUUlfpPv8QOEA==
X-Received: by 2002:ac2:5de1:0:b0:513:9da7:3792 with SMTP id z1-20020ac25de1000000b005139da73792mr2371852lfq.19.1710078400171;
        Sun, 10 Mar 2024 06:46:40 -0700 (PDT)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id y26-20020a19751a000000b005133dafa9c4sm669499lfe.145.2024.03.10.06.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 06:46:39 -0700 (PDT)
Date: Sun, 10 Mar 2024 14:46:38 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sergey Shtylyov <s.shtylyov@omp.ru>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Biju Das <biju.das.jz@bp.renesas.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [net-next 1/2] dt-bindings: net: renesas,etheravb: Add optional
 MDIO bus node
Message-ID: <20240310134638.GK3735877@ragnatech.se>
References: <20240309155334.1310262-1-niklas.soderlund+renesas@ragnatech.se>
 <20240309155334.1310262-2-niklas.soderlund+renesas@ragnatech.se>
 <cb8f85de-c1cd-4742-b8a4-2533482ee3b6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cb8f85de-c1cd-4742-b8a4-2533482ee3b6@linaro.org>

Hi Krzysztof,

Thanks for your comments.

On 2024-03-10 09:44:45 +0100, Krzysztof Kozlowski wrote:
> On 09/03/2024 16:53, Niklas Söderlund wrote:
> > The Renesas Ethernet AVB bindings do not allow the MDIO bus to be
> > described. This has not been needed as only a single PHY is
> > supported and no MDIO bus properties have been needed.
> > 
> > Add an optional mdio node to the binding which allows the MDIO bus to be
> > described and allow bus properties to be set.
> > 
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > ---
> 
> I believe this is v2. Mark your patchsets clearly (git format-patch -v2
> or use b4) and provide changelog under --- or in the cover letter.
> 
> 
> >  Documentation/devicetree/bindings/net/renesas,etheravb.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
> > index de7ba7f345a9..5345ad8e1be4 100644
> > --- a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
> > +++ b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
> > @@ -93,6 +93,10 @@ properties:
> >      description: Number of size cells on the MDIO bus.
> >      const: 0
> >  
> > +  mdio:
> > +    $ref: /schemas/net/mdio.yaml#
> > +    unevaluatedProperties: false
> > +
> 
> Please fixup the phy pattern, so it will be obvious it is for
> ethernet-phy and probably deprecate it. The phy goes to mdio bus, right?

Yes the PHY goes on the MDIO bus and the pattern is only needed for 
backward compatibility.

The pattern was specific to ethernet-phy in the past, but Rob removed it 
in commit ac8fe40c3628 ("dt-bindings: net: renesas: Drop ethernet-phy 
node schema"). Have something changed and I should revert that as part 
of this patch?

I agree it should be listed as deprecated, would this diff work for you?

+# In older bindings there where no mdio child-node to describe the MDIO bus
+# and the PHY. To not fail older bindings accept any node with an address. New
+# users should describe the PHY inside the mdio child-node.
 patternProperties:
   "@[0-9a-f]$":
     type: object
+    deprecated: true

Depending on if Rob's patch should be reverted in whole or in part I 
could also try to revert the pattern to "^ethernet-phy@[0-9a-f]$" if you 
wish. Please let me know what looks best to you.

> 
> 
> Best regards,
> Krzysztof
> 

-- 
Kind Regards,
Niklas Söderlund

