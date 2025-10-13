Return-Path: <devicetree+bounces-225912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8DEBD2351
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:09:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 354BD3B0F64
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4B32FBDE4;
	Mon, 13 Oct 2025 09:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uuu667TR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EFA2EB5B2
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760346554; cv=none; b=pdg1bRnPz/uYPThtfPGWdDpGbhAQZs/PeTcc5n7MKL2lDb2ykWjQRUPd0nVg24vmZaysPtKalqzS03JEeSohI9yrTdbhDhtTgNIaJHpIz7yG8lQUd3FnNubF43CmXUlT9r5M2KeeE23uhA1f+YHKFL/66zhYySWcRVe0axqO+xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760346554; c=relaxed/simple;
	bh=9/tPjPwmAwHE+w/f2VRXfTxMChPJurCvaKUv7Dc90r0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WYTk/qqQ6UFjUc50DkJ3HjaJSp2czQ2FfuXfaJ4/DlMh9WBeYOjt0UgsV4N0WTlRSVps89PI02HAvHWvH6EVJSRHEOqr3mEmfwTe2F6r0VM1HK7kE/cfMmHeo6yHcLwbShmzAcSMg3AXCmrV7a5wd70DyW97+E8YuNT2yNNJGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uuu667TR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n6kn017035
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:09:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+W5Z3iniZouZLn0FhSTsBy+a
	rT4R7Ezgi6+aX+wGV9g=; b=Uuu667TRjcjvz9KtfLfqYxIL1I9EXtI3eAYfCQrN
	02i0f9N8g/EzuWjF6MzHvpalEiY7xLu3Z1xx4b+B42+1Z0oW/0L/7lPoL/S/4xTO
	KW3kHI6377L3sXJXB2xNL3EomBWbOn+uswMYUTb94wiLsoU8dmHdy6cav1BrDezr
	KORtLCR1cE7wf8qlPFpAjOJVjMjYY27rOGOKB3f3awdtKZ3X5eFlLltQF8rJ8m+4
	UD+vRpQDjkX8HHBXSj93zTCiWmJsD5EA0kdTfBCq0UClkqRW+zTCgnMZ8F9+gF3m
	A19khpTUl8ItBdsnH0LDGRSn45oXoRO0ojIBDUKopuI1Qw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdk3yt5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:09:11 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eb2b284e4so13059372a91.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760346550; x=1760951350;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+W5Z3iniZouZLn0FhSTsBy+arT4R7Ezgi6+aX+wGV9g=;
        b=b8kPeQ7FRp+wcUF4bhluTFHs73nSBcoHUqyeU9YEp8BFFXNPmu8h6nR+RyE8MKihq3
         HumRGZO6GZ/rk5h7DAvQfoT1WqrfhMKYQQ0BcaSGV6eevQ0SMSaNQBsAjB+/ZLBuh2+n
         zm7FWBI25HLSaMLcHgkDKUA7DtiWvRyZ8VAlOnkISBzIBx1tHdIAvFvMNIio0KijSp4p
         58U9MNVv2MDKu7g04ivQlNajMeQPq+LwsPG+Vn/vuHWUS7xr8wmyRzkdxYh7Z+Sorqfh
         yOfAroSfFZKb5utRFfhL2FoBmJJvwIPXKeyGVVnsD85v9SdUt/IbA1L9l6YEbufzeZgK
         c1Bw==
X-Forwarded-Encrypted: i=1; AJvYcCWGlpTI3ktob21gsy0ztQhHVHsvOk7FvsH2ky1/G/+Dw7qM+NreurpS830uczg7gUKeucN6ELNwX4I2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0NCSLHobWiCWCQ9FovSdS1HKejl3WirgaLz1kBx0c6gkiv3us
	d3pooLrfqyXoXfY4SfH2gcOPIpSIrQUOPCfi9MsAT/K4OVwAzBKn2csv01Ex1DpENjfq4N8MVRo
	uwDzd6U98c6JQoJy/wccdPFA+uohOfK7T8yCd9B3KttjQeIgPAp4rU31jypjCTogArAfYtobvVQ
	hdUDKIJFPan4JsiopGo3RWsPPExCyQpTe/OoR7c6Q=
X-Gm-Gg: ASbGncvgKvrwv0Qd05Jjkw5Pjsuzej5yhU1rR8dwsmIBIlCJQFf/VGU0M+P45T3f8ks
	SuoZxBxfu0WxrJ4mwtSqetzlBX8jRZ3W5PikiwWB4/niljPYGZJ7mCmwV2/MAk+Vdso3Jv2jdKj
	CC9NzL3Kofrkd1CxrBKkGm5YoQvWk/qs5HI/jqToHHq4oL1anjVv8b
X-Received: by 2002:a17:90b:4d11:b0:335:2824:aab4 with SMTP id 98e67ed59e1d1-33b513b2420mr30607940a91.24.1760346549899;
        Mon, 13 Oct 2025 02:09:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXbOJLqfR6qcwg+xnnLpqFRUpcb+AME8EnWdBhYFjcqQJApiSOIz6skGpk5WJzbuffzpmfyRjGxn2/RGG310A=
X-Received: by 2002:a17:90b:4d11:b0:335:2824:aab4 with SMTP id
 98e67ed59e1d1-33b513b2420mr30607906a91.24.1760346549398; Mon, 13 Oct 2025
 02:09:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com>
 <20251008175750.1770454-2-krishna.kurapati@oss.qualcomm.com>
 <odikli6rfdyid5oqavurtqytgnwgh5hpmka2jt5tprpdw7cd72@icpnjnkfowt7>
 <20251009131543.GA379737-robh@kernel.org> <cbpne2d7yr2vpxmrrveqajlp3irzsglxroxyyjmviuci2ewted@6ewwp6yyybk5>
 <2a088c8f-5555-490e-a70d-308a876924ca@oss.qualcomm.com>
In-Reply-To: <2a088c8f-5555-490e-a70d-308a876924ca@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 12:08:58 +0300
X-Gm-Features: AS18NWCgbvnfOb8Rt1A2wRcnJlW4uGS7BeZqI-l5qa6PYzi4VWJkfI0FRHq4KMY
Message-ID: <CAO9ioeX51SzaMS4TK7=xfCXBNYi7SGsMBZAv4FrZ1LzONWFw3A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for
 VBUS based on ID state
To: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: 7qn6uEfyfT2rZ5bCKbIb05QUsF-dzPwW
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ecc1b7 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=EUspDBNiAAAA:8 a=769zcKDuTUlFvRdeRCgA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 7qn6uEfyfT2rZ5bCKbIb05QUsF-dzPwW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX/uvQds02iuhT
 QJZnbvoGwPCp7/2Elhf/ofH3A/jVUzSah7GBV2bE3zpfPHboQAwMGKU8RE1BATyAt4ciZ97K6z0
 jUq5EAlosXBe6q2YkbMH3+qv1MFOzQhFn90cEDuFNxHMS+xAU1NdToP4bbMTEghAO3oH7mHmLna
 OK7IsaRABU6DTGUF3d8JUkgiWrYiZUBYpzITzzGUrs1i7OxiuefAEG2T0wbeqPsIy/CFzn7fziZ
 5Rh3euO4eqDhlNSoWXWe6TUJZQzHlTHXH2ZOHvDeZrxvlVokkZVRwWaUPPnLnXEXoUgWDbHQoBU
 WllduDujOm5A96D1Dj14Wsb7/tbnZsLPN7TkK9dnGDDLkHLf3JUMQII/avIumOL53oG7k9WXR2l
 Ad0K4hi95HzHBh5E7reEEyQdh0wvrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Mon, 13 Oct 2025 at 04:17, Krishna Kurapati PSSNV
<krishna.kurapati@oss.qualcomm.com> wrote:
>
>
>
> On 10/9/2025 8:08 PM, Dmitry Baryshkov wrote:
> > On Thu, Oct 09, 2025 at 08:15:43AM -0500, Rob Herring wrote:
> >> On Wed, Oct 08, 2025 at 09:31:59PM +0300, Dmitry Baryshkov wrote:
> >>> On Wed, Oct 08, 2025 at 11:27:49PM +0530, Krishna Kurapati wrote:
> >>>> Update the bindings to support reading ID state and VBUS, as per the
> >>>> HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
> >>>> asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
> >>>> VBUS must be at VSafe0V before re-enabling VBUS.
> >>>>
> >>>> Add id-gpios property to describe the input gpio for USB ID pin and vbus-
> >>>> supply property to describe the regulator for USB VBUS.
> >>>>
> >>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> >>>> ---
> >>>>   .../devicetree/bindings/usb/ti,hd3ss3220.yaml       | 13 +++++++++++++
> >>>>   1 file changed, 13 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
> >>>> index bec1c8047bc0..c869eece39a7 100644
> >>>> --- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
> >>>> +++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
> >>>> @@ -25,6 +25,19 @@ properties:
> >>>>     interrupts:
> >>>>       maxItems: 1
> >>>>
> >>>> +  id-gpios:
> >>>> +    description:
> >>>> +      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
> >>>> +      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
> >>>> +      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
> >>>> +      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
> >>>> +
> >>>
> >>> Stray empty line?
> >>>
> >>>> +    maxItems: 1
> >>>> +
> >>>> +  vbus-supply:
> >>>> +    description: A phandle to the regulator for USB VBUS if needed when host
> >>>> +      mode or dual role mode is supported.
> >>>
> >>> Why are we adding the property here while we can use the vbus-supply of
> >>> the usb-c-connector?
> >>
> >> Normally, that's my question on both of these, too. However, it does
> >> look like both are connected to the chip. There's VBUS_DET which is
> >> connected to Vbus (thru a 900k resistor). So having these here does look
> >> like accurate representation of the h/w. The commit message should make
> >> this more clear. Honestly, that's really the only part I care about.
> >> How it works is not so important.
> >
> > The VBUS_DET pin is used by the controller to detect the VBUS provided
> > by the USB-C partner and to identify when it's safe to turn on the
> > device's VBUS supply. I think this still fits into the description of
> > the connector's vbus-supply.
> >

>   In case we put the vbus supply in usb-c-connector node, is there any
> way we can get its phandle reference in hd3 driver given that the
> connector node is not a child or parent of port controller node.

Sure. Use devm_of_regulator_get() passing connector node to the function.

-- 
With best wishes
Dmitry

