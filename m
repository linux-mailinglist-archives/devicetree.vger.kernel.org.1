Return-Path: <devicetree+bounces-275992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDUhI0y5t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-275992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:03:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 999B8295F1E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A343F30086B2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA00D3563D7;
	Mon, 16 Mar 2026 08:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="TC477T5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3999E355814
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773648186; cv=none; b=bFl/q9FB1hn2MeUSZwCDYpd2qYF/BPNUUfDr5jaG8rs1X+e+O4Ftt5fDKutOJz03Oz7BU/TNlK131X4iBG6hQ6rzwM0tF8DlEU/yubwY9vTzn9p00JPmyxu0+rBieBRXRvLmKtiRoI42G6aAJEkzyHde38zmQZ2mFAU+Wt0CYEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773648186; c=relaxed/simple;
	bh=I3ozpn0AlufRc2Jss5KsZyj0nVqY6AoUdItpi643AQI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=jysNgrp/Zxvp1uh6Tl5QYsn4Se/jZJA7HU1yGwNGrbPOMnnracHHGPR9L5BW5PzW6TIDRY++GcJm5I5SzONcq2WICnyr1mMmFrWEevsP7FL4gsU9gdaFl4Mf2INGv/ragzp8Wk1j1XzvYIXazSMaMX7RX1XSn/TOBdFzeYf3XvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=TC477T5P; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b97bca3797dso88193766b.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773648183; x=1774252983; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sU3L+3tbACqITsDz16andVuW8wZL35d5pmOo8PiAQ1A=;
        b=TC477T5PvaGkjcNwJm7pCqcz8viqAUum5A18ihSZaEmGWIxEvx3ewsyFaw58OamBkT
         B0Ta3lk6ieThz7uSz6TzQnsQ+u/6+/P3GsJXcxxmjQF64EisRgGDi8hVZ+06+a7/QZHd
         KY+GFQ8v1xqBJSTshlsWqiCfDmbohnH4RavHs6OSRKK/gBiKgTUBh8Jnxl0M4ZBhjEnP
         qHQCNMwlz1dkd5k4iweQt9GhdTpt8OqGpPi+GN1G6w9jOJVbFvNChsG2i95SaYbiomss
         m6hazGTRuBHQW+eshgYiqfQp+T9eEGxYynYIXH9Fza02ByhkVEbnAiGNqWIRrcmLnKLv
         9nSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773648183; x=1774252983;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sU3L+3tbACqITsDz16andVuW8wZL35d5pmOo8PiAQ1A=;
        b=PM0by5SDOslWLxeorAw+hXRqlmg8pOhOH5vr+XlPErP+p67B7m5tCwfDoqZ6BoP9m4
         gCWn8cfNVLJCmROlrRrmnONBD9ssY+le/IdcQp5yWxPAa7rJmBbCxOF/8GBpNDnXhzlJ
         I23O+710THSsDBRfJGM4vGYBs7FVMt1HgioEeSVQIWzo3cHVS6/fX88DFpq/yRb4qDVW
         TAx8mUaBozrYxXpgSIUtKZgVRy4aa8Fy76Mkfca0pjkSl9bF8urNvNxEAr/76LHBOvGJ
         Y29mPgA/Og/On1/cPCZhpxcRKQ8dXyMQrrpQftRNZNHzMrj+Bi7xMeciIKQbzG6peOgt
         wTtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXy8zVKHLvod+Ixb989DdR80kNDLeFlvU3LXyvzLNvo6kPfs7PS2NAGZLOUYS4mBQ7VBwum711nx1+m@vger.kernel.org
X-Gm-Message-State: AOJu0YxXPJaIwo3T6jfP9S/sEi0EmxH6kPjbcPf8fhtCMEKFv+IkBui1
	0yhV5E2eQ1zgi821hDyE4ssnS8BCDutFA/7Uu0v2v70gH8oOrJuaslcJqau/NHTN7DI=
X-Gm-Gg: ATEYQzzw0H5+QzUsIZaPSefc/t1Q9V8GD0WnOg48sZ0664IUlLR8HmOg5FTA2Mg9Xoy
	xb9SMp88z83OnsgYcdducvsA8/LrRMoA6c/spaBByAvKCYlwrx+zqOusyYeuOqSPMuYAzT6mEj3
	oQcsi+jpFSDKJxe0ASWmK7o26z8zARkwKwK4zopIgYm9efUE0N+RVqBhQMZp5hwgpI44CE8IM2C
	mDA/B2/omN+9xum/x5aM6+OjbNyQHUK1ECcfiTWVzDwH26r8E8eDRPKep+xfLN83h0Q4RbtHaQV
	dgoWHuaFbKM8PsBNK+K5dYXEna4+qYyHgzpGSIIjp3NG5OUP2Uy9OXcuzuNXIHT/JXQQTGvE3fO
	JEkZjfx1XzT7P7u+u37kBGm+01Nq7xGYPbkYhR3fOyDgDF1Bsb6PokF5L0EuTatlciEjnKxRsWH
	5HQfipuBitN1SKOTbw1oTbe79jZGZ0gGHZgS7cyyMvX3F5WjNzy74Cnbeta6deHxP17L+P
X-Received: by 2002:a17:907:98e:b0:b97:554:f12e with SMTP id a640c23a62f3a-b97650c2f9bmr622693766b.14.1773648182486;
        Mon, 16 Mar 2026 01:03:02 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976d0b5886sm504167566b.65.2026.03.16.01.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 01:03:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 09:03:01 +0100
Message-Id: <DH41T22PJEW9.3EO3P50QRXG8H@fairphone.com>
Cc: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Bartosz Golaszewski" <brgl@kernel.org>, "Rob Herring"
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
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-2-28e01128da9c@fairphone.com>
 <20260117-obedient-galago-from-eldorado-8e0ba4@quoll>
 <cb2430f2-8601-4c72-af6b-10f1ff16c188@oss.qualcomm.com>
 <DGDV2EMXHDS3.2377AQBNDDHAV@fairphone.com>
 <DH1LC0C4QD0Y.1XKV1PWFCBQRN@fairphone.com>
 <jexys4ypbizesa3whuvtq36t6hpqm4httlbwtzkulz5pld4yul@lf3joaistvfb>
In-Reply-To: <jexys4ypbizesa3whuvtq36t6hpqm4httlbwtzkulz5pld4yul@lf3joaistvfb>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275992-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 999B8295F1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Mar 13, 2026 at 5:18 PM CET, Dmitry Baryshkov wrote:
> On Fri, Mar 13, 2026 at 11:43:07AM +0100, Luca Weiss wrote:
>> On Fri Feb 13, 2026 at 2:16 PM CET, Luca Weiss wrote:
>> > Hi all,
>> >
>> > On Tue Jan 20, 2026 at 2:18 PM CET, Konrad Dybcio wrote:
>> >> On 1/17/26 12:54 PM, Krzysztof Kozlowski wrote:
>> >>> On Fri, Jan 16, 2026 at 02:38:56PM +0100, Luca Weiss wrote:
>> >>>> Add Milos compatible for the CAMSS CCI interfaces.
>> >>>>
>> >>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> >>>> ---
>> >>>>  .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++=
++++++++++++
>> >>>>  1 file changed, 18 insertions(+)
>> >>>>
>> >>>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yam=
l b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> >>>> index a3fe1eea6aec..c57d81258fba 100644
>> >>>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> >>>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> >>>> @@ -27,6 +27,7 @@ properties:
>> >>>>        - items:
>> >>>>            - enum:
>> >>>>                - qcom,kaanapali-cci
>> >>>> +              - qcom,milos-cci
>> >>>>                - qcom,qcm2290-cci
>> >>>>                - qcom,sa8775p-cci
>> >>>>                - qcom,sc7280-cci
>> >>>> @@ -263,6 +264,23 @@ allOf:
>> >>>>              - const: cpas_ahb
>> >>>>              - const: cci
>> >>>> =20
>> >>>> +  - if:
>> >>>> +      properties:
>> >>>> +        compatible:
>> >>>> +          contains:
>> >>>> +            enum:
>> >>>> +              - qcom,milos-cci
>> >>>> +    then:
>> >>>> +      properties:
>> >>>> +        clocks:
>> >>>> +          minItems: 3
>> >>>> +          maxItems: 3
>> >>>> +        clock-names:
>> >>>> +          items:
>> >>>> +            - const: soc_ahb
>> >>>> +            - const: cpas_ahb
>> >>>> +            - const: cci
>> >>>=20
>> >>> Same comments as other discussion these days - I guess that soc_ahb
>> >>> serves the same purpose as camnoc_axi, so this is just last entri in=
 the
>> >>> if:then: blocks.
>> >>>=20
>> >>> I really find this binding terrible - around six names for AHB - so =
I do
>> >>> not want another combination...
>> >>
>> >> I dug up the CCI doc, it talks about the CCI having a CC_CCI_CLK cloc=
k ("cci"
>> >> here) and a CC_PBUS_CLK (AHB interface to the rest of the SoC).
>> >>
>> >> The CAMSS TOP doc (for Milos specifically, but I would assume there's=
 a
>> >> pattern) says that for access to CCI_0, I need to enable CAM_CC_CPAS_=
AHB_CLK
>> >> and CAM_CC_CCI_0_CLK. CPAS is a wrapper inside CAMSS that contains mo=
st of
>> >> the programmable IPs on there (notably not the CSIPHYs, at least not =
on this
>> >> platform)
>> >>
>> >> It further mentions that GCC_SOC_AHB_CLK is required for *any* regist=
er
>> >> access within CAMSS. Perhaps it sits right in front of the xNoC-to-CA=
MNoC
>> >> interface.
>> >>
>> >> This only enforces my imagination of CAMSS being a fully contained "b=
us"
>> >> (perhaps somewhat like AxNOC on 8996 represented with a simple-pm-bus=
)..
>> >>
>> >> +Dmitry, myself and a number of our colleagues were deliberating how =
to
>> >> best represent the hardware going forward and I think we at some poin=
t waved
>> >> the idea of putting every camera subdevice under a "camss: bus@ {}"-t=
ype node,
>> >> which would hold the reference to the TITAN_TOP_GDSC. This seems fitt=
ing for
>> >> housing the SOC_AHB clock as well and therefore concluding this discu=
ssion.
>> >
>> > How can we continue here? What change can I do to unblock this? I can'=
t
>> > tell whether soc_ahb =3D=3D camnoc_axi for this platform so I need som=
e help
>> > here.
>>=20
>> Any feedback on this?
>
> I went on and checked. No Milos's soc_ahb !=3D camnoc_axi. They serve
> different purposes.

Thanks Dmitry, appreciate it!

@Krzysztof: Could you take another look at the binding then please?

Regards
Luca


