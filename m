Return-Path: <devicetree+bounces-234762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C3DC307A8
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 11:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C3724E3877
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD61314B68;
	Tue,  4 Nov 2025 10:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RZNJVbTo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G1UdCRh3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDF92D541E
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762251832; cv=none; b=EdYouKhk1C40GRKncHmqjTpBwACF2fDyCsISRgM+8M1cvI+W1rMJc+chFFvVcogbYX/HHi6KA9Cxb8fHaGdqlJIv1FGsW477w5rHlzfLm8c7V+nJfLhoU4sXUu4Gh3a9mAK2C8tAu63p6JRa6ykrj1aym4hT5lqS2v/ee6ECu9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762251832; c=relaxed/simple;
	bh=q9qMwtZAW3c5DEh62FrkMbn/ep1+A9tNPWjOVBB6hts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YAmMGEmrM2gTjp8DcgwBFtqtJZbaGo0CTkAwiQvAyBa14/7vzA0odvMoMqQAVW9rfIzOwI7WFjGKLrshFE9ANws06aMOU2zLytYJ5LVRt2I/jyt3tZVGL3X50NrI2gdNPqclLnBjOwny54l6f/aJF5AKrYT+O/b93R/3V9F3YEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RZNJVbTo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G1UdCRh3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A48gItl1540080
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 10:23:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g0wnieTQYd6PlV/O1fzaIWKTEzufNimegl24CUN+lIQ=; b=RZNJVbTo/qH9HL5l
	HY7kiVKnn9eV2jhZ0ZrAiu2WiY2kZd/yJmPYdK+EvnnrZd+hbtvu3aNMTPIdsXGz
	7PsXYQlTVOJ7JJzrg2q955vwYdDTDfKTh1fFGrwXs+P0RMKu+gWtsrk2DOXooPm+
	Z0ZznG+TPLAR9kGVo/6f+Q8XhmcOvGcCFqsUO7YYs1WzzbcDPcuSufddKllid9Gs
	tGsO8BMMaQDhR2Mu+aenzM0dZOVBeEErzB6usmrDVJg0BjlAfZRvFyZhHTE3uW+p
	1ollgjg/FeVeM0EVdJu0UKzF1hQ/2Cok+b0ophxfx9YV5oTsD68ZgdCaUsqW0kXk
	BN01Ig==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a78eqs9s7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 10:23:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88050708ac2so66512326d6.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762251829; x=1762856629; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g0wnieTQYd6PlV/O1fzaIWKTEzufNimegl24CUN+lIQ=;
        b=G1UdCRh3riyrCSm04DTRvbfI3g/Q1Nd3AskmqEHY+SNSnXnW+hDgOG7KeGNXNytC0N
         hfw6JyRDFfjUaPnBkZqcnZiAgzhEAMCCN3uB5tbo9e7kBt9s/WkIXmBk/x3pON46yaLJ
         q/42mXbmBjjescTunYORv+VIPTEBd2fg10IgPc4k9fnGb4geuxC4vP5juM6GmWPHjp/c
         GlR3V3FAsTC7WtiHhEINfVh88A66jZiBOjDwFxk0WUIhu4AoZzQCC58MM6U+aNoyuAgk
         Av5dqYlCpRCAV52oqVyyMBhVhEWhFSSx9/CwvtFsCQUVYNIFx8drdvMhg3kvC7yAysX6
         OJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762251829; x=1762856629;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0wnieTQYd6PlV/O1fzaIWKTEzufNimegl24CUN+lIQ=;
        b=fJXo5/mpBOBhLJhG828n0rLw5zIpJXxEr9BuLFlUrxQlWTTnI3IvyVmPibMMoGzwDk
         oqTa+Iycsb7HOEOql9XF37ssr0roQlmwyiHQmE09ZOqQIrRz1lxQJIP4s6mYYOMP7nL/
         jQFvVDkkP3kwaspgnCHIY4masUHRGeCq3f2Dy0l65nIfBNNblnirXbLyqFwywm5AVs3K
         /xWhikn9NwE2hS57qBXHH07eCBizHZBp0ajRBqyRcsU+OTou2+hnuvlkE+fCUI+4sKlh
         Nqh6avkZg8adqrkrydad4R2iWPVi9cWq+/jtWJZtFIRb6Yd0FDtmuiSGcojmCPAPLbLB
         RPlw==
X-Forwarded-Encrypted: i=1; AJvYcCVFZJzYn+9HFaxZ+bI9TZFTigxGAGYbpNan9Hqb0LEIfu9yoCtTaKl1vJIgc7dSvAM5pqvBQYix+7Oe@vger.kernel.org
X-Gm-Message-State: AOJu0YwOvK9b3B2wie7q4w6f0EJywGjlLeeYqFuPWAprcefDp3vP6BUB
	aNK3tHfNKr4TvZTFtqUwB034fKAwdCsjDdMpUrbjyt3/gAH6fuwEndcRrPVaGE/nYd+rVKdSPei
	3kEHAU8rI+tlIDg+/lLIq5oVE0Xn+WAl4jV8GbEanD09Mnol9A9txazmIwl3QCTGGdjI63/+OfA
	z9a7C8ihu3NS9X3AALS/LAOyIkRPINrE806vPoHxw=
X-Gm-Gg: ASbGnct8/dix+APjc5vYuPIPrxUUVpLijy/KQ3EUdYvUoULXgMK9hpSww5RTXtWVGTb
	mHGZxW9Qh9EwrWeNuMp41Rk8B9maBfUF+ZPVoE4wYasN9tInancptPtP4RoKSGdOoBX7ksD3Pm2
	6u/fF4NFM5zmcPyoZsXO9EFqlPrWU3c4sa51iQ4H0YiFtKMTHCGJ/gSCrgedFnOm+MB+75/w04d
	0k+AOmhz16fol/oJWbzMwGCvQgmLK6I4IbIgYFYMdXgSw==
X-Received: by 2002:a05:6214:55c4:b0:880:5edf:d0fc with SMTP id 6a1803df08f44-8805edfd4b8mr53734046d6.44.1762251828955;
        Tue, 04 Nov 2025 02:23:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFr0sEwyaZTxY8f2vag+J7tTIiWriKsoGBuIGWjz3ofTb3smc77gquWEYnErheDN7hvnseToMwJKSJE12/vppk=
X-Received: by 2002:a05:6214:55c4:b0:880:5edf:d0fc with SMTP id
 6a1803df08f44-8805edfd4b8mr53733796d6.44.1762251828526; Tue, 04 Nov 2025
 02:23:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
 <20251103182006.1158383-6-loic.poulain@oss.qualcomm.com> <z3uy3kx6qx7tcca3psfocrlkrrtumlqyzivrstyxfhbp6lkxti@eeolpv64365x>
In-Reply-To: <z3uy3kx6qx7tcca3psfocrlkrrtumlqyzivrstyxfhbp6lkxti@eeolpv64365x>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 11:23:36 +0100
X-Gm-Features: AWmQ_ble8Tl0B0RAqyd55cThaECsBG5SDXp953QxAOWK8e0Ojn_seswjTiNG6sc
Message-ID: <CAFEp6-2N33RQ8fTPDqx5qvbfALPBNbkLBcvGuX1v-9CYUDw9vg@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qrb2210-rb1: Add support for EDL reboot
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA4NSBTYWx0ZWRfXyb01QmxCdhKn
 0azqqfyYT2gVxtwXhilrJZIaT0LVDxcGHLIZ1B7utaYca3Bvo7z35krjO/+WCpktF0wfrp3U+pI
 1tcatjqBlNJLXwxsdsi9gS0Wtfd6WLuiulbzo6dcremOWRouwN+6VUM5F9Yn1TVxxjFO3JzW+/A
 IrQuFYmPpitqzsEtiVaXpds73BucnlJc49N2yjQVJERKmCfkEJ10V7RXdzYJnryUzb8lIMihtSI
 2XRclZbfhbiRgj2G2JPsKG6qknP+odJw0KyGcB3JxzO2lB1fbdHdeI7ncT8JJ9bXMahSKCsza8k
 al0Ls6N9oW8Hh57uXPuhTgoN2KzQzklx8PLcg3bnwMfm5KmTbNbLdNrbcASRXYx20fzzw4KAsHB
 bmqSi8SdWlE11Y32RzV4hk6tKmqh0g==
X-Authority-Analysis: v=2.4 cv=fofRpV4f c=1 sm=1 tr=0 ts=6909d435 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FaJMSaSSDYtpzwamVtwA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: l_Le92fciq_VC1K5Y0Zpfjsaqv-VwtWe
X-Proofpoint-GUID: l_Le92fciq_VC1K5Y0Zpfjsaqv-VwtWe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040085

On Tue, Nov 4, 2025 at 3:20=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Mon, Nov 03, 2025 at 07:20:06PM +0100, Loic Poulain wrote:
> > EDL reboot mode can be configured via qcom-scm, enabling the platform
> > to enter Emergency Download Mode for recovery purposes. Additionally,
> > we enable PMIC-driven warm reset as the RB1 platform's PSCI interface
> > lacks support for warm reset.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/pm4125.dtsi     | 2 +-
> >  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 9 +++++++++
> >  2 files changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/pm4125.dtsi b/arch/arm64/boot/dts=
/qcom/pm4125.dtsi
> > index cf8c822e80ce..5d84a3250481 100644
> > --- a/arch/arm64/boot/dts/qcom/pm4125.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/pm4125.dtsi
> > @@ -15,7 +15,7 @@ pmic@0 {
> >               #address-cells =3D <1>;
> >               #size-cells =3D <0>;
> >
> > -             pon@800 {
> > +             pon: pon@800 {
> >                       compatible =3D "qcom,pm8916-pon";
> >                       reg =3D <0x800>;
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot=
/dts/qcom/qrb2210-rb1.dts
> > index b2e0fc5501c1..70c6c929bbd3 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > @@ -322,6 +322,10 @@ &pm4125_vbus {
> >       status =3D "okay";
> >  };
> >
> > +&pon {
> > +     qcom,warm-reset;
> > +};
> > +
> >  &qupv3_id_0 {
> >       status =3D "okay";
> >  };
> > @@ -510,6 +514,11 @@ pm4125_l22: l22 {
> >       };
> >  };
> >
> > +&scm {
> > +     qcom,dload-mode =3D <&tcsr_regs 0x13000>;
> > +     mode-edl =3D <0x1>;
>
> Why are these a part of the board DT file rather than the SoC DT? I'd
> assume that at least dload-mode is generic to all devices.

There=E2=80=99s no strong reason, it=E2=80=99s firmware-dependent (ROM/XBL)=
. But
indeed, this behavior appears to be common across all QCM2290-based
boards as far as I know. I=E2=80=99ll address it in version 2.

Thanks,
Loic

