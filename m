Return-Path: <devicetree+bounces-260474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GlWDbEjemmv2wEAu9opvQ
	(envelope-from <devicetree+bounces-260474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:56:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7853CA35BD
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4ED59304E31E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF20B363C45;
	Wed, 28 Jan 2026 14:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2VBK3Vu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9316A3590DC
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769612018; cv=none; b=b/pVD1FK6lCk+aIRv+tw2bTph3ribmulPYLM4/d602DHLxf8oHkx/q13zifQkp2n+dmTzg96gdalBOrlMgPes8a3/Awfn8XTH/IExP8GeXWuh4nEBTKJZXMt3d9FCiImHdk752Dy6arWvu/jqMf38W67zy06vv25EDFIoSMC6BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769612018; c=relaxed/simple;
	bh=RLGH0KLlJYKtiHI1o5Hc7krURGr/94NxReup/3F61b0=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=Bre0WYIktiyVHQQX5XPh4wkUidnt3LSW74oGgDGGmaLiU7pODOJ0HNJxBuUqVX/Y201nTkZZEiOLw/GtdzZ3zTfFEb+Ua1WwC/1ICqFRnsmL7/O1H5hzUOM8Iz+MSyu5kStrKsB7tN7k7eA0uB+6oa61bt7+cyR/KBEa5SyCf5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=2VBK3Vu5; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b87003e998bso167734066b.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769612014; x=1770216814; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tvMFVjPj7LszBlDjv0UEAIY+fzVqoG9LSfE8sRUrMQ=;
        b=2VBK3Vu5lBA6MLYy4oFSUJkVAPutIIKdV62A7v/I1JF/Qc6Bkn5OPE1dRB58pgVjOl
         FN6hU2dQNRI1w5UQpACYrs794d/ZOXmPCJOvE+Xcdk7R2mJ1JGNAojZk4XU4uCMHkrNc
         Juj8qNug6RyhvLWpzgWi9zF92cDtiSV/mFjjjcTRb6MT/TOfDXRg00wiAeadXjwqIJrL
         uu+pFGdKTsrwsSv+GVsmHZJ1bUye8elzi/HzQyj4qrh19VGWxRcj6aarrd5mgbyZLsWd
         X4A9lR4rjaDHKE+BaPubpQVIyqs8D0CxPFIhNPG8SBstzotuW+mgLpdpGryTrG7bZSTj
         L/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769612014; x=1770216814;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0tvMFVjPj7LszBlDjv0UEAIY+fzVqoG9LSfE8sRUrMQ=;
        b=IWuHFo3/6+21qqnR9wjQTadRzmsbHPe9cHDeAh4pBNcZSMVDskwFn1If+gelZJxxXR
         sTBXB4EQpmIjGAkTfbuPAeaSFFhIfHmoJkfx7LJ/KYUkd/Qy1iiM52ISN8HWKjmu6+b3
         Cmh+RhlHvuK0Df9D6N+hOhPteNYFRZFGf6H8fy1jtTLsrnLMFsEyEPgMWTuk5236no7R
         qbOY8cNtpY0wtU+FP8P31UN/ASBeWTzCidcYm7ilWWEczGsR9hn8uyRXGH3z+F2RCdM6
         DRLVivzWI3V8Q33781MRHjgFXTC+LEjCLKFV0ybLn3QiKQLlHHNJoqUiE5/+XcC3iwd8
         YI4w==
X-Forwarded-Encrypted: i=1; AJvYcCVoNYZivvdDH7d0w2M/Tilv6Gm9FnyY7Z5+llkm5qvPmfSyPb2qhMPTY5XNfaMs4xbkbpmxAgFRpn6m@vger.kernel.org
X-Gm-Message-State: AOJu0YzjqTCM2N6apUmOpiyocVCbutZLEFLM5u7ucin4Bbqrbvtm1nWK
	KkiCPQRcujltOihsGbWQsdmmxwWX3wMNzf3u3Hj4GNWetrXqleyH5eTYNLuDuBerbSk=
X-Gm-Gg: AZuq6aI4Wqk9YfJ6AfHtd9w+2vmsUZ1V/uCk3ZS2xV2hWZlM/bCtqNdVH/+b0Q2fC47
	yZ0XYJfYBYHLUqHBjQhjqinXVGjWOpUALxqztIkTGmvg0/g3L+2z0w5sfFHz88TaZRtsWdeah+r
	GY2WLU3vovJiKAbLryoYxKOJWa8LXXq8wokmUWyCfHPBQFJhoi4oVb+H8+uJmo6L9e/myyONYzr
	XTPq0VqQ1DWBrF3wZ6ZewIpEWZQBFmKp2awhmP5ro7KxkMM93CH9V9nKfQdiGI0QKPrvvDbbl7K
	0pLKws7o8FVFUulq80l6yzzfCG7P2zCh5XgyYXYV9b4+v4EnEcSC+EFZv65GITIyyVr91psioSq
	9rQOmfTHaP8wGrrIfuMh+VN0wvNzg+WjpHfJyMPbN23jasj1hj5d7vRJDMGAwajWIrM7bNUyZDi
	gncGGtBbQJuomB4xi/kzjiaWoRiUhAmLO5Y73GSmEeQ2jXeFkZNAiPx8AHR2/mFgHrZ9Y=
X-Received: by 2002:a17:907:7b8d:b0:b80:456d:bd99 with SMTP id a640c23a62f3a-b8dacc41fabmr404660466b.19.1769612013870;
        Wed, 28 Jan 2026 06:53:33 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ecc68sm137096266b.64.2026.01.28.06.53.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 06:53:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 28 Jan 2026 15:53:33 +0100
Message-Id: <DG0B3RX07B9R.1BLBFSOBR0MVL@fairphone.com>
To: "Rob Herring (Arm)" <robh@kernel.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>
Cc: "Konrad Dybcio" <konradybcio@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Linus Walleij" <linusw@kernel.org>, <linux-gpio@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: pinctrl: qcom: Add SM6350 LPI pinctrl
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
 <20260128-sm6350-lpi-tlmm-v1-1-36583f2a2a2a@fairphone.com>
 <176960748074.1497503.9897313421386306393.robh@kernel.org>
In-Reply-To: <176960748074.1497503.9897313421386306393.robh@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260474-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,fairphone.com:email,fairphone.com:dkim,fairphone.com:mid]
X-Rspamd-Queue-Id: 7853CA35BD
X-Rspamd-Action: no action

On Wed Jan 28, 2026 at 2:38 PM CET, Rob Herring (Arm) wrote:
>
> On Wed, 28 Jan 2026 13:26:49 +0100, Luca Weiss wrote:
>> Add bindings for pin controller in Low Power Audio SubSystem (LPASS).
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  .../pinctrl/qcom,sm6350-lpass-lpi-pinctrl.yaml     | 124 ++++++++++++++=
+++++++
>>  1 file changed, 124 insertions(+)
>>=20
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/p=
inctrl/qcom,sm6350-lpass-lpi-pinctrl.example.dtb: pinctrl@33c0000 (qcom,sm6=
350-lpass-lpi-pinctrl): Unevaluated properties are not allowed ('i2s1-activ=
e-pins' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/pinctrl/qcom,sm6350-lpass=
-lpi-pinctrl.yaml

I fixed the dtsi addition but forgot about the schema.

Will include this diff in v2:

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-lpass-lp=
i-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-lpas=
s-lpi-pinctrl.yaml
index 2fa2484e7bc7..4903b2d37d89 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-lpass-lpi-pinct=
rl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-lpass-lpi-pinct=
rl.yaml
@@ -96,8 +96,8 @@ examples:
         clock-names =3D "core",
                       "audio";
=20
-        i2s1_active: i2s1-active-pins {
-            clk {
+        i2s1_active: i2s1-active-state {
+            clk-pins {
                 pins =3D "gpio6";
                 function =3D "i2s1_clk";
                 drive-strength =3D <8>;
@@ -105,7 +105,7 @@ examples:
                 output-high;
             };
=20
-            ws {
+            ws-pins {
                 pins =3D "gpio7";
                 function =3D "i2s1_ws";
                 drive-strength =3D <8>;
@@ -113,7 +113,7 @@ examples:
                 output-high;
             };
=20
-            data {
+            data-pins {
                 pins =3D "gpio8", "gpio9";
                 function =3D "i2s1_data";
                 drive-strength =3D <8>;

Regards
Luca

