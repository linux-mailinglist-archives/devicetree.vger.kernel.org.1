Return-Path: <devicetree+bounces-238795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE3FC5E282
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1979D3C10B3
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2CB4342CAD;
	Fri, 14 Nov 2025 15:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o23z3Jtf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R/cIfDNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A977342C99
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 15:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763134546; cv=none; b=EGf2NDYrrP1Ey/fz74aqHiCcdoNelpkerl8GA/0gfhXzaHEC1/tmYqQAy2hgUCB4ZYxC2mqGuYMxmfVHz8474zpaB03jidA7R+13MD2uU7qOoSBEAJ2oIXyXhyI2wmIQ6gQphl+/XIfjhyEvqXI/jPGSeczf10SoZFJvNhquxog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763134546; c=relaxed/simple;
	bh=Wyu9DfM8m+/9Vxr2XSGjko5bALmHnWPB4iRYcBevGQQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bdd80bIQCYoG14WoBQrXdi2a14hMi1F4FIySKca9o2rkbCw20d1dTzIfCxMburRsqccefAu9z7tIO7fNs+4iTkWCuBmIyLgd8EfdMM1ANRFTxPw4zlY+VgoloBhV35YDG7wCabxQSlWFi+XenSJblHM3PwgxzoWL35wn/qyDcfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o23z3Jtf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R/cIfDNO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEBi3Ad3370017
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 15:35:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2bCKeQ+Sluq0XkbM/rIfYZbhzlSoOWjCoZWm9XIaaYs=; b=o23z3Jtf80s0HHqF
	ErYSjH70IM1C57vkzo1mOGDfXmlOU/0+SjCpFbccIynjlPoSwmbT8pTVGna2yW5x
	ZIoJNYovDmICd5nIBmJUs2YWu4RqSY29G+xk0xTNFtqM1M+4Em0EQWl+oGqskH+B
	2/S8eXTZMQE6iyR6+aouVtiAdLi1Asp38PoZDyy0FQ2+D/0yGYYH8UCCgZ/d3vqw
	h8FFQEcSrbhrpJCSVWiXFoqCb9ECUQSFQKhXBvehdpx/PAI2+z8CdShLrDIEz9Iq
	H5s4469FkN+HvqM3WYV6j5gI0YghbRDxJKi2evUhbzi7w4Ccu0MGk4S4sccgg8Oy
	iXiVZQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae3t9rm9s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 15:35:44 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8823c1345c0so29810506d6.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763134543; x=1763739343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bCKeQ+Sluq0XkbM/rIfYZbhzlSoOWjCoZWm9XIaaYs=;
        b=R/cIfDNOz4wzPYdReA5JaV8cTQ7T2Dg/pI6nUj/6DWcyksDJgE6nClcYrwNKNj/9WW
         A9C20Db0SYNpeymY1CqVfmNj2DKKbkUzs0xzy62cV9NEEv9AsX7Ah2Qvq2hRHnDGJnYC
         y3VqNadmQQq8olKrm4LQcjCITmgPUjfg24j+awxtDFKy31McTGZHYS1u6J1xz57UelrS
         tMcRozAc1LV0EyO6OmtHnkr0OtEDOjsuyGlBHapxv50ubsZI/UKa8B5F4+9BhPCgBP02
         oHhUgwphBcIPVxcxtDAtlfzcDe5M+y7V9ira+em9UJVqfknECphkR7OutA6mTmSJdtji
         EAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763134543; x=1763739343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2bCKeQ+Sluq0XkbM/rIfYZbhzlSoOWjCoZWm9XIaaYs=;
        b=s+D2RFlWHjP4rEL10x7CbrcLH+O44DJ+CN1ZckLtVn/2072BwWaU3zUWA3u/VDFhAy
         zhLVqPW2q9lqV96rDjFO3rc8bzhvntNzK2AidX5Q3sBTA/BiDRa0ZUYnYj8InlHiHFuN
         FSFB2IjKZimWUPOv2UL0uwu9/puS/z4XCeUuyGb9qG0Qy16dEqfU3dohgP1GDjOZGyhb
         0EGRi9VxU/i+N2UgiyN9RI9iwQOtDWAlPljYjB0fBQ+LvtOL1Tbd9YSmY2rxMiqfm+PS
         ZT6M2ptxq1AlrwnxJDXlkrbt2k4rqrW77Ggn8OKy1gyEA8WC/FRjJ0nhXiZTIGX2YPtA
         6Cow==
X-Forwarded-Encrypted: i=1; AJvYcCU9RGnPiXEVThIobmptosZDLcD8YlgS757Dt2cCbBNM1A3H3JvQ8PQgQSlJkZePytgTGF+Aq6RAHm0j@vger.kernel.org
X-Gm-Message-State: AOJu0YyrIvfzed6vDJ/A6StzPmVvp3TkADiz3odHEQyupVv1YuXc7tub
	MJ5axpq4OpOJ2uv1R7/NOzgGZkHvvxlpjulyBd6fc1w8EazK9tCAULfUGo3fi+CO//UVzRDTuw+
	l4DwXgG0FB2EReVZcLmeICexsEQ72DdlCs+7/Fdmj1dcVg3FAVN6sNEWOnipqyYCwzhNqA7nU9I
	4dYe9VSMhrBA7hbd35DF+xefwSun87mkUgyY4s8DpZsIer8wYMqg==
X-Gm-Gg: ASbGncsYoHMfYczAGbipP5PZvDKNwPTBJBNO7eKRKkXmT9r9XM4HnhE1hEcGQgtD5Uu
	+aZCiH8rqgJpal/8Bm/lPDk6mW6/iKDWL9yJBX7J7sTahHrxB8tXOi6wOkaPVnqPvJF4I0QY5ID
	AN01truAS0BwvopGIdY7HefHr0pT46qxSKW+ssCpUKVY4NTmS1iQXWuVXnB4BT2rtbDGJHrPEMy
	fIezSWrw5hxKmrF
X-Received: by 2002:ad4:5dee:0:b0:7f5:eda2:a54b with SMTP id 6a1803df08f44-8829270f697mr55790416d6.62.1763134542990;
        Fri, 14 Nov 2025 07:35:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExGxEGmy9Wk2SjtsDFfxtyAb1s1oReldG8wwbI9CQL7zQX5yUc49Rsa2RzromxSUyKG4JlavwELKEgFtW5Ew0=
X-Received: by 2002:ad4:5dee:0:b0:7f5:eda2:a54b with SMTP id
 6a1803df08f44-8829270f697mr55789456d6.62.1763134542286; Fri, 14 Nov 2025
 07:35:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
 <20251103182006.1158383-3-loic.poulain@oss.qualcomm.com> <740b9e7c-59bc-4a35-a268-526d92db372c@oss.qualcomm.com>
 <CAFEp6-12qN0=cv5=tPeVq3bVDLkaQDHLLCVQY4dtCTSvx+dPOQ@mail.gmail.com>
 <c1269f38-ab90-40d1-b5d3-39f546829d6c@oss.qualcomm.com> <CAFEp6-1+inMhsgjSqAZ+UDBMuNc9DA-jXFyqB=gkvYpSzW9Ukg@mail.gmail.com>
 <6daf722b-6b1b-4c91-b108-74793d930319@oss.qualcomm.com> <CAFEp6-0sbDj0C9KAMxq1mrGO9jGz4YDMqnf1AGVU49PyGzLi8w@mail.gmail.com>
 <4e9d15cd-1ef2-464c-b421-f8a333c53825@oss.qualcomm.com>
In-Reply-To: <4e9d15cd-1ef2-464c-b421-f8a333c53825@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 16:35:31 +0100
X-Gm-Features: AWmQ_bmHKjXqy5StN-3NHcR0_n_1EHGaga7QeKQGrwp9P5rHIgF40H3TwxpF0Ho
Message-ID: <CAFEp6-0q5ERAm3femWn8ZLbMN-e60jceh+rHDBJ=V0fM_7bAWw@mail.gmail.com>
Subject: Re: [PATCH 2/5] power: reset: qcom-pon: Add support for WARM reset
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=IOAPywvG c=1 sm=1 tr=0 ts=69174c50 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=Ch0LA8A4dSxzT6VuE1oA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDEyNSBTYWx0ZWRfX/NytYtuL2xp2
 AJqVdaeB7cxwtu6ACPLL7KwNKy3lVdFczC/YH7P6SlVNYjdXt/h3K07vakTrXMFzL7R1+kOdNzM
 QdIHsD5BJ9KoyFvoQVtjVl9TkFNMNsI4zAoWZY3lDZQUIiQIRd3FRplm64SCxt30PKf5Hdi3yv4
 br+y//0gfRs/9mDZZcQf3ukyiuWN6Mn4WioW3XgZVFo7PybmFJg6peLvi5J73QBp1Mu3A5lCwKK
 TRW6VIxqMHhvrBffRrS5uVZmMCaJoF7KaGPDVg1SkDxCh8F5GWdukI0k9Jkx97x0AI+To8tp/Fv
 JGcngGJKanZ8WL3y/9zlpylS1tUw33FtF+cDOtYaVQ0cs3UvXP6XLzQByIVRTWYR2TxJoclNcqE
 UMQAZ05+4tLUcyWwJY5phjLZvf8H+Q==
X-Proofpoint-GUID: TeEcCaS5HXC2_m1aDos-ht1NrRz5GAzH
X-Proofpoint-ORIG-GUID: TeEcCaS5HXC2_m1aDos-ht1NrRz5GAzH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140125

Hi Konrad,

On Wed, Nov 12, 2025 at 12:20=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 11/12/25 12:16 PM, Loic Poulain wrote:
> > Hi Konrad,
> >
> > On Thu, Nov 6, 2025 at 1:50=E2=80=AFPM Konrad Dybcio
> > <konrad.dybcio@oss.qualcomm.com> wrote:
> >>
> >> On 11/5/25 10:44 PM, Loic Poulain wrote:
> >>> Hi Konrad,
> >>>
> >>> On Tue, Nov 4, 2025 at 4:20=E2=80=AFPM Konrad Dybcio
> >>> <konrad.dybcio@oss.qualcomm.com> wrote:
> >>>>
> >>>> On 11/4/25 4:01 PM, Loic Poulain wrote:
> >>>>> Hi Konrad, Krzysztof,
> >>>>>
> >>>>> On Tue, Nov 4, 2025 at 12:50=E2=80=AFPM Konrad Dybcio
> >>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
> >>>>>>
> >>>>>> On 11/3/25 7:20 PM, Loic Poulain wrote:
> >>>>>>> This mechanism can be used when firmware lacks proper warm-reset =
handling,
> >>>>>>> for example, when the PSCI SYSTEM_RESET2 function is not implemen=
ted.
> >>>>>>> It enables the warm reset functionality via the PMIC.
> >>>>>>>
> >>>>>>> This fallback is only enabled if qcom,warm-reset property is pres=
ent.
> >>>>>>>
> >>>>>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> >>>>>>> ---
> >>>>>>>  drivers/power/reset/qcom-pon.c | 47 ++++++++++++++++++++++++++++=
++++++
> >>>>>>>  1 file changed, 47 insertions(+)
> >>>>>>>
> >>>>>>> diff --git a/drivers/power/reset/qcom-pon.c b/drivers/power/reset=
/qcom-pon.c
> >>>>>>> index 7e108982a582..684e9fe9987d 100644
> >>>>>>> --- a/drivers/power/reset/qcom-pon.c
> >>>>>>> +++ b/drivers/power/reset/qcom-pon.c
> >>>>>>> @@ -19,12 +19,20 @@
> >>>>>>>
> >>>>>>>  #define NO_REASON_SHIFT                      0
> >>>>>>>
> >>>>>>> +#define PON_SW_RESET_S2_CTL                          0x62
> >>>>>>> +#define              PON_SW_RESET_S2_CTL_WARM_RST    0x01
> >>>>>>> +#define PON_SW_RESET_S2_CTL2                         0x63
> >>>>>>> +#define              PON_SW_RESET_S2_CTL2_RST_EN     BIT(7)
> >>>>>>> +#define PON_SW_RESET_GO                                      0x6=
4
> >>>>>>> +#define              PON_SW_RESET_GO_MAGIC           0xa5
> >>>>>>
> >>>>>> Going back to msm8974 where the SPMI arbiter first showed up, thes=
e
> >>>>>> values are all seemingly valid, so I think we can drop the dt prop=
erty.
> >>>>>> The restart reasons are set in stone too, and you can find more of=
 them
> >>>>>> in the register description.
> >>>>>
> >>>>> Yes, but this should only apply when the platform firmware does not
> >>>>> support warm reset via PSCI, right?
> >>>>> Making it unconditional would override the PSCI implementation even
> >>>>> when warm reset is supported.
> >>>>>
> >>>>> The point is that psci_sys_reset() executes a cold reset if warm
> >>>>> reset isn=E2=80=99t available. Therefore, our PMIC reboot notifier =
must have a
> >>>>> higher priority than the PSCI handler.
> >>>>>
> >>>>> So maybe the alternative could be to introduce an additional reboot
> >>>>> handler in psci, with the lowest priority, so that warm reset can h=
ave
> >>>>> a chance to run either from the psci main reboot handler or from th=
e
> >>>>> PMIC reboot handler before falling back to cold reset?
> >>>>> [PSCI-handler]->[other-handlers]->[PSCI-cold-reset-fallback-handler=
]
> >>>>
> >>>> This seems like a common enough problem, perhaps the framework could
> >>>> accept EOPNOTSUPP or similar and try to delegate further, coming bac=
k
> >>>> with a normal restart or so, if unsupported. Trying to make a specia=
l
> >>>> contract between qcom-pon and psci silently will be very fragile
> >>>> otherwise.
> >>>
> >>> I tested the following, as described above:
> >>> https://github.com/loicpoulain/linux/commit/5c34ea54e1a21ff1192c3c341=
877b24eff5f80b4
> >>> The only special 'contract' is the handler priority.
> >>> If you can elaborate on another/better approach, that would be helpfu=
l.
> >>
> >> Thinking about it again, it'd be difficult to grab some sort of a hand=
le
> >> to the ""parent"" reboot mode, so what you propose here is good
> >>
> >>>>>> That said, we're circumventing PS_HOLD this way - is that intended=
?
> >>>>>
> >>>>> Well, we don=E2=80=99t have direct control over PS_HOLD since it=E2=
=80=99s managed by
> >>>>> the firmware in our case. That=E2=80=99s why I considered using the=
 PMIC
> >>>>> software reset as an effective way to achieve this warm reset.
> >>>>
> >>>> Hm, so is there no longer a way to assert it by writing to PMIC
> >>>> registers?
> >>>
> >>> PS_HOLD is a SoC signal, and we can maybe assert it via the
> >>> MPM_PS_HOLD register through the msm-poweroff driver if needed (well,
> >>> if access is allowed from a non-secure world).
> >>> However, this would also require coordination with the PMIC driver to
> >>> select the correct PS_HOLD action (shutdown, cold reset, warm reset).
> >>> For that reason, I=E2=80=99d prefer to keep PS_HOLD based logic abstr=
acted by PSCI.
> >>> Using the SW_RST PMIC register allows us to perform a reset without
> >>> additional signal handling.
> >>
> >> Yeah of course we should use PSCI where functional and available
> >>
> >> I think PS_HOLD used to be fully manual on old (msm-3.10) platforms
> >> through PMIC registers. I see that e.g. msm-4.19 has an SCM call to
> >> (de)assert it. There's also a "halt PMIC arbiter" call.
> >>
> >> (via drivers/power/reset/msm-poweroff.c)
> >
> > Yes I could try the SCM call to deassert PS_HOLD, is it something we
> > should prefer over PMIC soft reset?
> > Asking because the implication would be a more complex solution
> > (though not yet tested):
> > - Adding reboot mode support in qcom-scm to activate ELD mode
> > - Adding reset-notifier in pmic driver to modify PS_HOLD action to warm=
-reset
> > - Adding reset-notifier in qcom,scm (of lower priority than PMIC)
> > doing the actual SCM ps-hold deassert
> > - Ensuring that PSCI is still used for cold-reset and warm-reset when
> > supported...
>
> My answer is unfortunately "I don't know". We should loop in some
> PMIC folks that would know the difference

I think I=E2=80=99ll start with a simpler patch to add support for qcom,scm=
 reboot-mode.
Then, we can discuss the PMIC changes. I=E2=80=99ll also check whether it
might be easier to fix the PSCI or EFI reboot implementation on the
firmware/U-Boot side so that warm reset is handled correctly.

Regards,
Loic

