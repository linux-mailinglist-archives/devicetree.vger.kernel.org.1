Return-Path: <devicetree+bounces-273153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MN4nAb5Er2n3TAIAu9opvQ
	(envelope-from <devicetree+bounces-273153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:07:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B033242121
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D165E300BBB9
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 22:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8196D426687;
	Mon,  9 Mar 2026 22:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fQbai9Lc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2593F426680
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 22:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773094074; cv=none; b=qbxU8y0sxkGLgFDMBZ5PuA0Cs9E/2JAlJzO27SPAXI41qIbPCnkwj/PwbvSpIj1fzKQLVkUfvGbGKmcAhvJwp0EOGrUOBlO0IWRZcLWNFNf0ySjRkIwgT7tqzMq+uq6rYS+fOIMki+en68gwG1Tn/1aB8e/vasnz3bdiwrywECo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773094074; c=relaxed/simple;
	bh=mXuEXkQj7Rg4dutsP6ny1KP87NvfEJ0+83zK4pvYZr4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JSFnijtPwLxs5Jos1Ywn68vAuvhEb6eG1JUEsTE1BrylGTbjOj9vKusum/majOFlsE5y1HrnJQf6KaySe6YEPKPmnllifn+iM8aCZ4RsDIfFe2mYFta4B3TTQoeCGRX1ucJwTrz5uv7veJPRvlLhGsyWJSBoNw1xjVawG9vou8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fQbai9Lc; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-482f454be5bso122785245e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773094070; x=1773698870; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Dk5accODM7ezppgmsEo6ZlVd16xDcQunTBdBDruNkNk=;
        b=fQbai9LcJlrJp7LHta2PUOQaEWQBCKry7hgxgC9IDhjff1qTboyTCcCWWs7KeCC++5
         Lcz6nq+tcIvWdzdKPS5M+oQTIThkzVl9P16wFdMRlHXXOy635XGyDEi+k+PMVTK4ylnF
         6rmvMM2nbRPQORp5zJ61ElHchC9H5EPr1SSBAjemPyU1/urLFN33y1E/OuATk3DGh1oK
         Ak8wVblBAumy7Ek2VtdJNMp/uNa3vgXMjgd6+4oEfWyn8cc+5BFrMSDyfwxV4MvobP7o
         2QpeZnUQ3D6WHb0R+ZI4m+EsKm1osgcJyGMMY5sVM87DmOdvTTC/eaO8g/bwSIGMMYNv
         cQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773094070; x=1773698870;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dk5accODM7ezppgmsEo6ZlVd16xDcQunTBdBDruNkNk=;
        b=Bb+a8Fin/VLHGIW8fwHavuCnUDu9CBEM0qKZ+W0gzUhH9CByt2paKZYNO8p7YuHAPI
         fv47Xwbr0qd/STaqRku2WusY97LSgyYh5fJiUCxX+GhUfznMEzpg7ydgXkQTcW4jj/Oi
         oBp4Ts274JGPOfjiz2D7FQauZp1uimSas1dDLKUJBNJWc4JK4+c84rKnweF/2D3Gi+hd
         PzYlBRukQtoBP/EkQk2akpfPYivKToV5REkqlVEE3tZ0eRn0lCG1mnmfgg+ldHwLh0AF
         FVR2IIeAHntXKlRbEBFdIgA80dOjYExuTzC6kyWt4yCX1mPQHVR9lj7WVFjvcGQjKboI
         SSOw==
X-Forwarded-Encrypted: i=1; AJvYcCVD9yCGo7AhoMHtwWRoQSsA2AjHwHHwzjBn/lstf3k2yf4vp8QkXZZjBWT+xu4USvWyaiwlqkEhHik5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz38Uuyfy0uvFQhOWTYv1oowmQIwSFcp7UB7DgbXnDJPSaclu/c
	JKVx8unfyjkZvHvRooKbJyDoyiscOdbh9qBOw2NeQcMpqrcg9x7j6h8H02NxcGDOe1M=
X-Gm-Gg: ATEYQzzfbwQlWAchN6+0LpoFV/EXMgYfW9Aft7LhkK53edkjZ4iqumdioECCX0NRGvo
	+HqsT8jK6uBX/+JvtoceMssDUm/KgaoCuwkEw5mcz7JkleuF3siRv4wTiBO3VPLkzfB6aHamI/U
	75is9NN0AhLygNLO8jvBEFyWMd6JtJ2BMCX7LOjZs0dt+JKLheqMODSV+C0Sm83qUEemxHVi8wB
	r2FjagxxyN7Q7hoKTHO3sNqxEXjWBTxHBtIc0hCtE9kLOAP6ow2O9Exe0PmkXC0C0ZNkACqviOu
	cQ/ErgF1F3wYo2Je5hNsaiW10dphf4mtxaAI8kvNf6qxatkNlcPyFllcxiKJuAcvx7ONqQKqGay
	+Ja7S0rQRHPOaAI5VXanDqQFx4FyEe+8+j2pV5nPinS9OD+JB56NZuYpThEM4br+puX+TnXvrrO
	xm1tK2cqmK4ac6ct1CyoEmv7yaw4vNeriu0OA=
X-Received: by 2002:a05:600d:848a:b0:485:3294:fff0 with SMTP id 5b1f17b1804b1-48541a2b9f4mr12097815e9.17.1773094070519;
        Mon, 09 Mar 2026 15:07:50 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff23:4441:1c2c:7aff:fe45:362e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485419c2930sm44011255e9.0.2026.03.09.15.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 15:07:50 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:07:33 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Paul Adam <adamp@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
Message-ID: <aa9Epb7MQ0qVFWGO@linaro.org>
References: <20260307-wiko-chuppito-v4-0-325ac66ae338@posteo.de>
 <20260307-wiko-chuppito-v4-3-325ac66ae338@posteo.de>
 <aa6P4rE7d2ftaeAw@linaro.org>
 <aa8__ofJBdMfavbq@MyryksLaptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa8__ofJBdMfavbq@MyryksLaptop>
X-Rspamd-Queue-Id: 9B033242121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273153-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 09:48:12PM +0000, Paul Adam wrote:
> On 26/03/09 10:16, Stephan Gerhold wrote:
> > > diff --git a/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
> > > new file mode 100644
> > > index 000000000000..d927bae2b208
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
> > > @@ -0,0 +1,315 @@
> > > [...]
> > > +&sound {
> > > +	audio-routing = "AMIC1", "MIC BIAS Internal1",
> > > +		"AMIC2", "MIC BIAS Internal2",
> > > +		"AMIC3", "MIC BIAS Internal1";
> > 
> > Sorry, just noticed this now:
> > 
> > This seems a bit suspicious (I would expect "MIC BIAS Internal3"), have
> > you tested if the secondary microphone works?
> > 
> > Thanks,
> > Stephan
> 
> The secondary microphone does not work yet, neither with Internal1
> nor Internal3.
> 
> In the downstream devicetree its Internal1 for AMIC3.
> 
> Is there a way for me to check which one is correct?
> 

To be absolutely sure, only with the schematic diagram of the board...

Another option would be that the secondary microphone simply does not
exist at all (i.e. there is only one microphone). Any idea if it works
on Android?

If in doubt, it would be better to remove the line for AMIC3.

Thanks,
Stephan

