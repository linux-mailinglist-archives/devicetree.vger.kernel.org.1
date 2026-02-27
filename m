Return-Path: <devicetree+bounces-269430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEUxIMYUomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:03:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 416BA1BE66C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCA303060CC4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF5514779B5;
	Fri, 27 Feb 2026 22:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AXVSIq/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556F93128AB
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229814; cv=none; b=A5JQx1kmR9Ps+kbe/x3MTQ+SUYFmyLveXAdNOOCv9opehqzJB6uVWnuNCsvXosbhV5ypH/uCgTHDhBl7EGpcFFDqUBlgVSOlmmgI2fjV3o1EWhync7RsXz7Whu1+IG9z9qn4yYnIaczRk34V22YofHtutO/5baGZcmVUpOR1GEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229814; c=relaxed/simple;
	bh=P2W5OeAUpE8W0m/2mG4JAdANmbJNvyGxA62EsO0TwaU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=X0Wz+Er5VQOdQqU3m8np8UOaEs13DCv16IgLQYuT6OyzLPCxRKxb9AoOtvVTI/ubiAoIYvj+l7keirNPWWnkmXpVQ0RCf2Ndy1PMH7CRZ/x9qOAbiW1VLnjuK7cpXSdfTjti+wx8+Wrvw1jB3hQO16jUWwvP7K2RZmODK99NuJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AXVSIq/o; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4398d9a12c6so1969942f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229811; x=1772834611; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Iwg7YUZ0r1LAUEvFmzagwdKz0teH6aiApB7iFdGE2sw=;
        b=AXVSIq/ocUCopKWgIMKLku0MZiTnHs041Cc3ivkKPVigLW8yJqQnTskRlF4jVBiYpy
         alWiGfgf6FgnvJsxk7lRM06n+u76zEjj1PstVNtA4ZjX8HzVPVYFscR5Uq+SQphLo497
         8QjQRODilPB6k1yFQa/WRUX0/Ss8oiki3Kv+R29j/VlxNZzdyywmNG/8J+VWLV36WTvP
         HPnnlTSJ0WGyFmfEesaswDiYvqLOtr3hC5c0d/NsBAYaxm4z1vT0BbM0pqHbEoWpBvYh
         YCXi+TmUKsECzRc8D7vV7pxi0c1BgOeNV5MnZCAG/sjThRMF3rxwZ332zr8VFGFELWFB
         oXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229811; x=1772834611;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iwg7YUZ0r1LAUEvFmzagwdKz0teH6aiApB7iFdGE2sw=;
        b=o86n99+EONBZ+gfrBaN6u1+1Xd5w2lEeOkoiNtFEhYBjqg2EhNBRu4KvZAQcM8A4rs
         eJnCmK8rb/WEJFAAIdA0694iFYcYrNOvTCKAd7Gxgk6CyYUqdZdz6vH/A6KwASXasK+q
         TwJyg3kcSK1O4HrPeo3dKWpZ0CAfjt62x/pgRqqvbHnutOtu+zq6z/Cmc9W9fWK3p9h8
         jEYpIkR1TUNjKth5cgYJgpsh5Vb+dFkm3CRj9zCRrBMh/iIpeJA0RsK8IMjhCDFEw2W/
         hZtCtNT2pnWTBDvyAKIlg07ZbJuNMNmD2o3dL/fwgQ01P/nB56sRqp738wzfV5gwNjMN
         0INw==
X-Forwarded-Encrypted: i=1; AJvYcCUeTJqGPMzHNjuMUBOt03N0hV4UnixexSMTxAGcXQlKu6u9LsVuPq8/Le02HuRXVhCX4yfmClRu58z6@vger.kernel.org
X-Gm-Message-State: AOJu0YxvJUv8wo/sETEFrToqhBQhQkZkEbakxbADhMMrrJX7Y6vlJZ5R
	eJhAUM6GItONRKd8CC5zriMsZyFbzHU80n499FXyuezhnSBgqpYfqQYQPXUw5M/BUd64ZmtIBd1
	32RtI
X-Gm-Gg: ATEYQzwL23gN5rwXdN4oR8Ej9639iO/R9/ajOaGfjI2ZA6O0Y+LxLOlSXZh2vKPCquc
	S8LHu0NBAMEEif5f5XgcA0qiDVE4jiW72w7mwVVLAd3FWCDV+HQUUt04hQQi2HiA9RzkGKyizIF
	Ue9xwM/2+AN0OvZuR+WKvBrkYk3rO/wqWNUXvxuZ3pMTA5wZbOusHNPY4rbvuGkVTlkdkDThugq
	cgk2KeZroh1aDVlOli3gcCtABRyuIlXIL3Aj/NUGR58eAZKRQlGlgoub/U5ECsVXGJAbyuFwwKd
	SYaGN3xhlP2tlr1D+RR+kv3REU7/5lr1yEiSoPbKNrYi1OA+dr1hbPUKww86cWOWodh4DFCsu13
	/LIxNwJN7huoTyNgeRLQatzb0vIHOz/xL5a/ZIJVBbZkQ5zQ1tOM77DhdB7qLb04gQDaxNmqB5m
	9HxuVuKJrcT9ExpDo8OhCN0SO0g/TiumFLi5SSvB2KwGbzwR90WOXb6Ix/mQGlje4cncRIPUyIS
	T4I1vHY4Pn6PPKtY9GYmnX+
X-Received: by 2002:a05:6000:400f:b0:439:8d48:544c with SMTP id ffacd0b85a97d-4399ddf46camr7891925f8f.19.1772229810563;
        Fri, 27 Feb 2026 14:03:30 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c75a0f6sm11738508f8f.22.2026.02.27.14.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:03:30 -0800 (PST)
Message-ID: <d2d9601db1e4f6066a6c034c2f09d6e6f8b62a32.camel@linaro.org>
Subject: Re: [PATCH v8 07/18] media: qcom: camss: Drop legacy PHY
 descriptions from x1e
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
Date: Fri, 27 Feb 2026 22:03:29 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-7-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-7-95517393bcb2@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269430-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 416BA1BE66C
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> x1e is the first CAMSS SoC to use the new PHY interface. Drop the redunda=
nt
> legacy CSIPHY descriptions.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>

> ---
>  drivers/media/platform/qcom/camss/camss.c | 37 -------------------------=
------
>  1 file changed, 37 deletions(-)
>=20
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/pl=
atform/qcom/camss/camss.c
> index b1737b5d52160..0ebe634f5d96b 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -3895,15 +3895,6 @@ static const struct resources_icc icc_res_sa8775p[=
] =3D {
>  static const struct camss_subdev_resources csiphy_res_x1e80100[] =3D {
>  	/* CSIPHY0 */
>  	{
> -		.regulators =3D {
> -			{ .supply =3D "vdd-csiphy-0p8", .init_load_uA =3D 105000 },
> -			{ .supply =3D "vdd-csiphy-1p2", .init_load_uA =3D 58900 }
> -		},
> -		.clock =3D { "csiphy0", "csiphy0_timer" },
> -		.clock_rate =3D { { 300000000, 400000000, 480000000 },
> -				{ 266666667, 400000000 } },
> -		.reg =3D { "csiphy0" },
> -		.interrupt =3D { "csiphy0" },
>  		.csiphy =3D {
>  			.id =3D 0,
>  			.hw_ops =3D &csiphy_ops_3ph_1_0,
> @@ -3912,15 +3903,6 @@ static const struct camss_subdev_resources csiphy_=
res_x1e80100[] =3D {
>  	},
>  	/* CSIPHY1 */
>  	{
> -		.regulators =3D {
> -			{ .supply =3D "vdd-csiphy-0p8", .init_load_uA =3D 105000 },
> -			{ .supply =3D "vdd-csiphy-1p2", .init_load_uA =3D 58900 }
> -		},
> -		.clock =3D { "csiphy1", "csiphy1_timer" },
> -		.clock_rate =3D { { 300000000, 400000000, 480000000 },
> -				{ 266666667, 400000000 } },
> -		.reg =3D { "csiphy1" },
> -		.interrupt =3D { "csiphy1" },
>  		.csiphy =3D {
>  			.id =3D 1,
>  			.hw_ops =3D &csiphy_ops_3ph_1_0,
> @@ -3929,15 +3911,6 @@ static const struct camss_subdev_resources csiphy_=
res_x1e80100[] =3D {
>  	},
>  	/* CSIPHY2 */
>  	{
> -		.regulators =3D {
> -			{ .supply =3D "vdd-csiphy-0p8", .init_load_uA =3D 105000 },
> -			{ .supply =3D "vdd-csiphy-1p2", .init_load_uA =3D 58900 }
> -		},
> -		.clock =3D { "csiphy2", "csiphy2_timer" },
> -		.clock_rate =3D { { 300000000, 400000000, 480000000 },
> -				{ 266666667, 400000000 } },
> -		.reg =3D { "csiphy2" },
> -		.interrupt =3D { "csiphy2" },
>  		.csiphy =3D {
>  			.id =3D 2,
>  			.hw_ops =3D &csiphy_ops_3ph_1_0,
> @@ -3946,15 +3919,6 @@ static const struct camss_subdev_resources csiphy_=
res_x1e80100[] =3D {
>  	},
>  	/* CSIPHY4 */
>  	{
> -		.regulators =3D {
> -			{ .supply =3D "vdd-csiphy-0p8", .init_load_uA =3D 105000 },
> -			{ .supply =3D "vdd-csiphy-1p2", .init_load_uA =3D 58900 }
> -		},
> -		.clock =3D { "csiphy4", "csiphy4_timer" },
> -		.clock_rate =3D { { 300000000, 400000000, 480000000 },
> -				{ 266666667, 400000000 } },
> -		.reg =3D { "csiphy4" },
> -		.interrupt =3D { "csiphy4" },
>  		.csiphy =3D {
>  			.id =3D 4,
>  			.hw_ops =3D &csiphy_ops_3ph_1_0,
> @@ -5362,7 +5326,6 @@ static const struct camss_resources sm8650_resource=
s =3D {
>  static const struct camss_resources x1e80100_resources =3D {
>  	.version =3D CAMSS_X1E80100,
>  	.pd_name =3D "top",
> -	.legacy_phy =3D true,
>  	.csiphy_res =3D csiphy_res_x1e80100,
>  	.csid_res =3D csid_res_x1e80100,
>  	.vfe_res =3D vfe_res_x1e80100,

