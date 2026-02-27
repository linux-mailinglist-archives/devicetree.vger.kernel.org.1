Return-Path: <devicetree+bounces-269424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPx/D0QUomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:01:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 556541BE59A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:01:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A7A7310FED5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36ED3803C2;
	Fri, 27 Feb 2026 22:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QN2PkoMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CFD347FCD
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229667; cv=none; b=rrCSROGKUF5wWYo8Ra+1jOqDh/XgOAM7htSHvGlzE8YLG4r/+y9uaUXfgQu/4UiMJNFPD3J8gjKji95EskssB2oQdHKdSaU1whckl+j/eGAAKMwgZaitk1OMiDIHH3gdW008oQYQUTxvaNzWkHTc0syfEZ8qN1yX4YZvrWkndjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229667; c=relaxed/simple;
	bh=mAzcRoJBasmeGlXQNqZiZH4u/NL//5nG7PikmKl8E6U=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=m7FzIXDmNLwx2qkr449BccYd2II2u8BSiGobur2pssA6XkUqRf3k6rKcaxlSFqLOh+iiauuMWd7RdyPyZLoqVIRQJ9+Pd5Lotj0Onr5C7k+ILNX5ihD7Y2bi3kFbjiir0BeUduz4R5ySbpsHdrIQBdWFdW3TZNWipMSSR7Z8L9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QN2PkoMv; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-436309f1ad7so2083910f8f.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229664; x=1772834464; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qfcMSv/VkkX2uxiYYkJjDIlwc6S46+mM12tf1ZM4Tyg=;
        b=QN2PkoMvMlGWfE+Gestx6+y95fnJ3wbNZOdqTV/KUwM+iRFcg4DxfZGzK58RrSOmp8
         A+TGIcFCQDukgXjgWgghnX6GCmaUe//uC6XjfFXG+0TDmgkzhUnJQ8mkeLNKkxPnXB0K
         AR0BGUxlD99y1t6Z1NwzW0pB8oxw1zbBJ/b2tRlHAlKNxojsKyk+am6Jfr0JZHhZGJbN
         DP+QPX2uSwzO49jliT80YsZiwY3ReTuypO3FOYxkasoVyOIBVpiQUMZfCg+7XyQGgkDD
         ZO+t54nUuGksQa9BvYK57IUzXy98tY5p3UrAfUCWd454edDNTjCkJiKvBcUfQ34pyvXa
         okcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229664; x=1772834464;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qfcMSv/VkkX2uxiYYkJjDIlwc6S46+mM12tf1ZM4Tyg=;
        b=K2WG/r9gITVIaXwAQg6Vf7VKs3BOhjnjZmPaANmoP50lKeH1pfsBtMxlt77yNmGWNQ
         lWxHm7tioRfl5mre9b5lHoBtIZIux0ngN4pkbNeh04lT9HGuJcal3lKZBrJG7EdC5FOV
         1Y+2iCArb4WGtKr9MXcZ9fpqGhgAWUrxceTmESjjavxYsDsZmTRFevKzquwJzJcTyXw6
         Za9zN7PMFpWzrLj35u1vgN2dobDJePivA/oALLZfW26Wme97/Yj9icf6WY/BnFP8AGIT
         4d/P0ZAgNOiUki94vRLTtrfSWGgkPklu7ns3GtMHq9qZGbMYZDGhptaIiaZJa4bftBSR
         A4lw==
X-Forwarded-Encrypted: i=1; AJvYcCUCOmql3E1OWKkw8K7H2DpewKtxSKD96ulxjHdKJzp1qpcwH5l9IQ+jYezXIrBePFZpPnRaiOrL+3Q4@vger.kernel.org
X-Gm-Message-State: AOJu0YxcBSM+x3Z317td5UccmD33m9EqzTjOfRX2AKSjik6nO1P+IKmR
	Xn7MxsFWwYOGL0IDyij+lqmiz+tU+8Yjele0dskbqUuzHqyXs3iYNpGqQnBPEfrpHnw=
X-Gm-Gg: ATEYQzxdH6Jaxog57TWH1XRKmRNFhYsy4oywJYlUVWkS5/Wx4QP7ppNsafIye38aHn2
	UTjm5KFzxdrXlV/y8MUmdb3kCJ4qtj8DLUUNmDNQ3KwBxjxdCGSgF46nNtJq7KJxU8cOx3t78+z
	5ttqS21DjrZIF2WLHd8TeNcYflq2yR7z8ZRlxyBlOoKMG019P5bGYijHcX/HXIt1U7zA/yrItP/
	ELlw6AFogOhvC+8+cErGSWsj7Cr80v5HhQEbTIMIxBPxbernsaIkI6EwEDXCMsYqw/e3c24cd/C
	u/Z89b+25s1DZ6ROARZexXkW9BDVap7BhhwNyjqZBtO8Ojpiuq7La6gt+GG/kaHWcLIMxFnrvnp
	cfQVdBP/tVmu8lgTRlpioLugmx8wDR/ByN5g82FxZfzcu2SAp4G9MbvcSFvuXp7FrTZq5zH8kmW
	2gFIOePUkab0ISpNKVucBtuB6q8QA9+qksZQy1eO3ZpYyaNH3T2qerG02HzmEo3eKzTEv/VPpAf
	jb0pEMTLOCWyM6q5F4flV+3
X-Received: by 2002:a05:6000:4301:b0:437:719d:a753 with SMTP id ffacd0b85a97d-4399dddb9c8mr6708195f8f.11.1772229664528;
        Fri, 27 Feb 2026 14:01:04 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c71b75dsm9137081f8f.17.2026.02.27.14.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:01:03 -0800 (PST)
Message-ID: <233492977e4d890fa90fcbcac66bcbb918d63bcd.camel@linaro.org>
Subject: Re: [PATCH v8 01/18] dt-bindings: media: qcom,x1e80100-camss:
 Assign correct main register bank to first address
From: Christopher Obbard <christopher.obbard@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bjorn Andersson	
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robert
 Foss	 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Mauro Carvalho
 Chehab	 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 27 Feb 2026 22:01:03 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-1-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-1-95517393bcb2@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269424-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,acb7000:email,acb6000:email]
X-Rspamd-Queue-Id: 556541BE59A
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> The first register bank should be the 'main' register bank, in this case
> the CSID wrapper register is responsible for muxing PHY/TPG inputs direct=
ly
> to CSID or to other blocks such as the Sensor Front End.
>=20
> commit f4792eeaa971 ("dt-bindings: media: qcom,x1e80100-camss: Fix isp un=
it address")
> assigned the address to the first register bank "csid0" whereas what we
> should have done is retained the unit address and moved csid_wrapper to b=
e
> the first listed bank.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

> ---
>  .../devicetree/bindings/media/qcom,x1e80100-camss.yaml       | 12 ++++++=
------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.=
yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 2d1662ef522b7..9aaed897f7e0e 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -21,12 +21,12 @@ properties:
> =20
>    reg-names:
>      items:
> +      - const: csid_wrapper
>        - const: csid0
>        - const: csid1
>        - const: csid2
>        - const: csid_lite0
>        - const: csid_lite1
> -      - const: csid_wrapper
>        - const: csiphy0
>        - const: csiphy1
>        - const: csiphy2
> @@ -190,15 +190,15 @@ examples:
>          #address-cells =3D <2>;
>          #size-cells =3D <2>;
> =20
> -        camss: isp@acb7000 {
> +        camss: isp@acb6000 {
>              compatible =3D "qcom,x1e80100-camss";
> =20
> -            reg =3D <0 0x0acb7000 0 0x2000>,
> +            reg =3D <0 0x0acb6000 0 0x1000>,
> +                  <0 0x0acb7000 0 0x2000>,
>                    <0 0x0acb9000 0 0x2000>,
>                    <0 0x0acbb000 0 0x2000>,
>                    <0 0x0acc6000 0 0x1000>,
>                    <0 0x0acca000 0 0x1000>,
> -                  <0 0x0acb6000 0 0x1000>,
>                    <0 0x0ace4000 0 0x1000>,
>                    <0 0x0ace6000 0 0x1000>,
>                    <0 0x0ace8000 0 0x1000>,
> @@ -211,12 +211,12 @@ examples:
>                    <0 0x0acc7000 0 0x2000>,
>                    <0 0x0accb000 0 0x2000>;
> =20
> -            reg-names =3D "csid0",
> +            reg-names =3D "csid_wrapper",
> +                        "csid0",
>                          "csid1",
>                          "csid2",
>                          "csid_lite0",
>                          "csid_lite1",
> -                        "csid_wrapper",
>                          "csiphy0",
>                          "csiphy1",
>                          "csiphy2",

