Return-Path: <devicetree+bounces-265355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMptBH4kj2lNKAEAu9opvQ
	(envelope-from <devicetree+bounces-265355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:17:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC3213641D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 935C53023515
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0589CA5A;
	Fri, 13 Feb 2026 13:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2lcMPkFV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4181434EEE1
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770988611; cv=none; b=NvceGg3Ylp8qgkPLC12ILMaC7rf5oEj3+w1jm9Z51Hi7WCdEkn5Yuiz/FJEJeRkDGn8VEHSMIQ64fujca0f6k5FzGfYbAAhURtXcieQ35qdH5dAUlqAPh925b6s3fCJXJsdoexVSfkjI1u2lK8TZVSAwNPu1yawWWjJxUxG+fG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770988611; c=relaxed/simple;
	bh=sLl6FMj5rcoJoJnJtPsIJyDKQD5EE4IZ2V8G73qLWwo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=stI4KoHF5gP4cLG1DW28g6DulY4v7vk7F1xlI7RIqkMq1NxpGBNh9jrxyZ7IUfvTQzF0AMES5vh2lk/hrVpx/B1JVnecRuE52OARtVNL6lleus12XskcZ725hf0yYDjr6cAaO3IHCbo8p8oUG8lpIdfrq0lqigdqg4QSsTH0XT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=2lcMPkFV; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b88593aa4dcso102090266b.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 05:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770988609; x=1771593409; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yJBbVjH419c062Z3IzKiz9l8/ItT4jJ4UMp42HsCYlE=;
        b=2lcMPkFV33UOPujXvQB8/qXtwhz7YdGEKbgOQVxXgH0d6ZNVOsIQhqQ4tvbikHLe/u
         I0dMoFB+hukeRCXyUJGGyJvVbZYrdFSISeb/4JfoT0ChivOxfaq7u99fW/NYy2brNSpU
         8++8YHsjFfuvYoDZBeui60rES3qHWfddE57a9pYK2H0yQHNNmIB90Uy5HXv3IUnDpS/1
         OklOdaQZP4zeLXohClBbxo/0uqmYwMrpLDdsJEjmgUAovvSFDLIFB2xdnEvLocvaMRL1
         CtiHa6I1n3QIIb8kwBETNtnmHipuzr79CnutUiysGcPCevEi22SyFUHN4kjsI7t3+EQS
         I1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770988609; x=1771593409;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yJBbVjH419c062Z3IzKiz9l8/ItT4jJ4UMp42HsCYlE=;
        b=dJUH2gxOpaiTN3lG96dlXkhwRppQrBv0748Um9vIb1ma7PNgh1mMTbxX+VtiatXrpb
         Z7Np22Z1lLn078v+JnvCN2lY+diNPHpdbfRa44xKr2S8cnAhKV8fc0H6E2MTktmhEQS4
         Vwm/iuqI2TF5IAvWeZP6QQCTEBh/R3U87cNTvShQEnlni5LeT61WzMXjI/ugdZ1TMZc1
         I8CTCJqgne6LKRJpqJdvzlql7cR3t8kOQHpEIGqdVGVgZ6WcEmQmRTCv2a7EO3EYqT0d
         0v7FRKYklgOaBW0+U1NSvvAMQhe2EhGgYuHB1do8relMoXIOLEwYYO1jMRx9Jb9IdZkz
         2MSA==
X-Forwarded-Encrypted: i=1; AJvYcCU2wthqDs+qKdRjk9ashok++BJ90OF8/G2o7XHJErtmF0ZAnzzvl2hmpYK0mf9vh19rrqkiLJO1Q1zj@vger.kernel.org
X-Gm-Message-State: AOJu0YyFr0BglUjbhTPezxJYAD3Au7C0I6N8vQsR0Yag8YusmZV4sqrn
	ZMs0LuP0cI6Tm4P9Olr2quB1SF6nYiR3ALU/7W2+IkMBaqFO9prlzi3FlGXWR3dc1CY=
X-Gm-Gg: AZuq6aKvNr1ixDXh6krWPcFU5x+tP7qcsjscwZ6lQDjFaVGLIu2u5q+Up0C1dDhW5Q+
	A76L3t/B92bQfwbuZtlkPANXE8aMGEpUN3UM8MthYBY2nMErz5O6jW3kK0t7pjjWSmgwS/IHebt
	RSGpmYrCWvD7dQuaDSNKwOCAatjQ5C7L1jltQCcjWrnlwEX51SavC+L1yODnye8bvyCLb+gqpSW
	hg/6eruKsYuPptufb3tgrov6f5ObrOnOdL+wQo21JONJuwE1/kVNtKBYXdoP9sGV4EoWeuVhUze
	/JOVkIWVR8rouPjsfaLz4zxrM5zbbLBJi+CAhb7i7cskI9YCBJPQ3JHwZfuNQpzbsbK4DK7xSsh
	mVV0g2lerJnl5qR49UMwYmG2JWwjUDBTVnfklBwWoXpgguCBUOm/hiKaMqdjFUBZlCyaKDu7fzr
	efKfk3NOjwgUYc65Cs8n7RAVyZ5wlFoQG+a4u8E5IL9CWdbnBmjIUVVIcUrzIeHIaGUBDx
X-Received: by 2002:a17:906:6a16:b0:b83:b7c5:de2c with SMTP id a640c23a62f3a-b8fb41937e5mr107585766b.10.1770988608590;
        Fri, 13 Feb 2026 05:16:48 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ebd60edsm251679566b.41.2026.02.13.05.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 05:16:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Feb 2026 14:16:47 +0100
Message-Id: <DGDV2EMXHDS3.2377AQBNDDHAV@fairphone.com>
Cc: "Bartosz Golaszewski" <brgl@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Loic Poulain"
 <loic.poulain@oss.qualcomm.com>, "Robert Foss" <rfoss@kernel.org>, "Andi
 Shyti" <andi.shyti@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: i2c: qcom-cci: Document Milos
 compatible
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Luca Weiss" <luca.weiss@fairphone.com>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-2-28e01128da9c@fairphone.com>
 <20260117-obedient-galago-from-eldorado-8e0ba4@quoll>
 <cb2430f2-8601-4c72-af6b-10f1ff16c188@oss.qualcomm.com>
In-Reply-To: <cb2430f2-8601-4c72-af6b-10f1ff16c188@oss.qualcomm.com>
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
	TAGGED_FROM(0.00)[bounces-265355-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AEC3213641D
X-Rspamd-Action: no action

Hi all,

On Tue Jan 20, 2026 at 2:18 PM CET, Konrad Dybcio wrote:
> On 1/17/26 12:54 PM, Krzysztof Kozlowski wrote:
>> On Fri, Jan 16, 2026 at 02:38:56PM +0100, Luca Weiss wrote:
>>> Add Milos compatible for the CAMSS CCI interfaces.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++=
++++++++
>>>  1 file changed, 18 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/=
Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> index a3fe1eea6aec..c57d81258fba 100644
>>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> @@ -27,6 +27,7 @@ properties:
>>>        - items:
>>>            - enum:
>>>                - qcom,kaanapali-cci
>>> +              - qcom,milos-cci
>>>                - qcom,qcm2290-cci
>>>                - qcom,sa8775p-cci
>>>                - qcom,sc7280-cci
>>> @@ -263,6 +264,23 @@ allOf:
>>>              - const: cpas_ahb
>>>              - const: cci
>>> =20
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - qcom,milos-cci
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 3
>>> +          maxItems: 3
>>> +        clock-names:
>>> +          items:
>>> +            - const: soc_ahb
>>> +            - const: cpas_ahb
>>> +            - const: cci
>>=20
>> Same comments as other discussion these days - I guess that soc_ahb
>> serves the same purpose as camnoc_axi, so this is just last entri in the
>> if:then: blocks.
>>=20
>> I really find this binding terrible - around six names for AHB - so I do
>> not want another combination...
>
> I dug up the CCI doc, it talks about the CCI having a CC_CCI_CLK clock ("=
cci"
> here) and a CC_PBUS_CLK (AHB interface to the rest of the SoC).
>
> The CAMSS TOP doc (for Milos specifically, but I would assume there's a
> pattern) says that for access to CCI_0, I need to enable CAM_CC_CPAS_AHB_=
CLK
> and CAM_CC_CCI_0_CLK. CPAS is a wrapper inside CAMSS that contains most o=
f
> the programmable IPs on there (notably not the CSIPHYs, at least not on t=
his
> platform)
>
> It further mentions that GCC_SOC_AHB_CLK is required for *any* register
> access within CAMSS. Perhaps it sits right in front of the xNoC-to-CAMNoC
> interface.
>
> This only enforces my imagination of CAMSS being a fully contained "bus"
> (perhaps somewhat like AxNOC on 8996 represented with a simple-pm-bus)..
>
> +Dmitry, myself and a number of our colleagues were deliberating how to
> best represent the hardware going forward and I think we at some point wa=
ved
> the idea of putting every camera subdevice under a "camss: bus@ {}"-type =
node,
> which would hold the reference to the TITAN_TOP_GDSC. This seems fitting =
for
> housing the SOC_AHB clock as well and therefore concluding this discussio=
n.

How can we continue here? What change can I do to unblock this? I can't
tell whether soc_ahb =3D=3D camnoc_axi for this platform so I need some hel=
p
here.

Regards
Luca

