Return-Path: <devicetree+bounces-162660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1CCA79535
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7956E17065B
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 18:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49FB1D8DEE;
	Wed,  2 Apr 2025 18:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ESY+6x7s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4607419E826
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 18:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743619169; cv=none; b=I7uAgSZ2bGdsCQb3tUYtUAa/uDYy4Y7WCCp3OjboOGLQvg6/vGoWbfKao9Z3eg5wqJjClscX5cYQXgcH/DSIQhiUOQJzEU7FVpuWxjcKO3oTK3QR4GMX/TqwxKxZD5u8Vs9QyBu+04fTBGAZAgaY6wr6rAS2+qkJwD4uTKqetgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743619169; c=relaxed/simple;
	bh=A3khaq21uI6D+hNfec4Redi3mG1fNskqHWFV9FCWlUc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NTB8hrAx+V1QQZzHcKpgHHi00JeKyolWiedXfUNyuNplGaFAzLZYCBvBVDoeil3mJuM/sXmaKKF21O+iB2MkXTedhH7LSJ+juryr6YQoLnUnuk0xMCEqgovsbKFehs0NC2H8yKUC6xI1nWe+sZd4ahjlr/SL+3NhqmkTofBi8ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ESY+6x7s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532CQGFc024551
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 18:39:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rLRltPAW2VT+osyndq8xbNTAaaTzvicU6XEHnaTvyEQ=; b=ESY+6x7scCrYx+nG
	BrnUXYp5lICXjecsq2AXoO/uQpGAP95loBcQcLxRTeLSEwb2eidswYei2oMEoyc5
	aoP4uSPj80Df2j0dk3523XVXObrAM93Z6SXWy620jysZlLFSd3FZCd2+qQxXf/D3
	DWkGujXDcuc6+i9wt2WXm21X2NHrL+l12ECJqSNiOp/rWmtXLCZOyldDsOX/QxVc
	wk8NJbM0ZOGS9IfoSh+8pnnA42eLn42rAhN0A+fpDwgAsQtThrrGbucwVb6nSKZl
	/8NGadeGi4anVSQRK9IB5TkEoOEncnCdTqZufa2lHJ6sfkJfH6mhJ+nSkQHypFm8
	42xKiA==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rbpywfpu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 18:39:27 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3f68fe933b7so130079b6e.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 11:39:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743619166; x=1744223966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rLRltPAW2VT+osyndq8xbNTAaaTzvicU6XEHnaTvyEQ=;
        b=FShZDQ4o1jthC3EXcjSeo9FkRmOwhiHm+Gqtb9W96CeB+fwI3M4AgQXPNNdKZ/bMNa
         KYq3ecuTX3rpXG+JgjQIniS0tCEqU77JrSqM3IDvyQlzEGkI2tBpTdh68ol5YkdgG1YF
         b07BANa59U9qg33mofqkJx1J//ImkrIPqe/S4sDWqE0Kdss2ocM795zb9bPvRUlkJn37
         povHlUGCZZlfmxdcvHfca5/E5BkoreHcJf+eox2n8CEuarJVIKh2mBnqoxGNpd+B0F9L
         0p80ht2FP4/rC7c/a0Il1IrD9XOO5W+4qBU4iL1HjPns/5L9v435uIMiw9Q7WLNpT6I4
         YuKg==
X-Forwarded-Encrypted: i=1; AJvYcCXsUz0ZSzkRJiqUl7exSjDmTz7GfU7qIcHbzRHYl6aOzC8rHi2i3hHTEJ+ENWf7gdbu1wTgkBCGFyrY@vger.kernel.org
X-Gm-Message-State: AOJu0YwuhrtncSg6pkwBRm7GQOdvVhp7rjUCI5aK/AMcHTBlHmIxmcBD
	ulG0zvQnempwXn3yOCzeBktfK+AJU0/bmzt+7xYT5tSx9y1Lbci1/N2bJx8YrIeBOqvsChs1FYB
	trI9XbyKN7dR69RoEThW7YEQBbFHxbfdGBPKtNCh+uQeZqwDb6n17MnLl8GAYXdNZpXH4uxT9Ec
	0vYMWQc8Yj7rrbuVrq7Vh35nTgX0Aodn1abnI=
X-Gm-Gg: ASbGncs8jQVTkcHLPUBpT2QUWj0dQjmYQ7ZOJAHIjD3cLTFRkBcZ5Ml3MmCVIloz1wu
	wMu6qCPnGMIZxfytXDAYDHmyS+heAQJHeisBlEaZAPgDJ9ZycN/I1hlr3eX/ravemvY3Nf9dFkA
	==
X-Received: by 2002:a05:6808:6c82:b0:3fb:2e8f:4de5 with SMTP id 5614622812f47-3ff0f52ef55mr12164464b6e.17.1743619166135;
        Wed, 02 Apr 2025 11:39:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEa8ubrSd45uaaFhCFxG8RPmNf74FF0t82olgtZy7cR4JA2o8Zjllf8U6MoEnTSrTKOqq9YmFW/PnuOLXRUna8=
X-Received: by 2002:a05:6808:6c82:b0:3fb:2e8f:4de5 with SMTP id
 5614622812f47-3ff0f52ef55mr12164445b6e.17.1743619165788; Wed, 02 Apr 2025
 11:39:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303-arm-psci-system_reset2-vendor-reboots-v9-0-b2cf4a20feda@oss.qualcomm.com>
 <20250303-arm-psci-system_reset2-vendor-reboots-v9-2-b2cf4a20feda@oss.qualcomm.com>
 <Z9QQw6BcE7IXzu+r@lpieralisi> <Z+K3uNjTNbq3pUis@hu-mojha-hyd.qualcomm.com>
In-Reply-To: <Z+K3uNjTNbq3pUis@hu-mojha-hyd.qualcomm.com>
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Thu, 3 Apr 2025 00:09:14 +0530
X-Gm-Features: AQ5f1JoIGcawwwxAneye4VDKyUquub00SsUJlDPk9-P3wh_983NTysTlWsL0c0s
Message-ID: <CAN3W6UUgacP0JZc7yGJ2Q3HYGFZ3mMHh0okyHTMiuxDSwmABHA@mail.gmail.com>
Subject: Re: [PATCH v9 2/5] firmware: psci: Read and use vendor reset types
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, cros-qcom-dts-watchers@chromium.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Shivendra Pratap <quic_spratap@quicinc.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Elliot Berman <elliotb317@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: rB70kstsdT2GpwygmREs8kJM_HRip2AJ
X-Proofpoint-ORIG-GUID: rB70kstsdT2GpwygmREs8kJM_HRip2AJ
X-Authority-Analysis: v=2.4 cv=ZNLXmW7b c=1 sm=1 tr=0 ts=67ed845f cx=c_pps a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=GcyzOjIWAAAA:8 a=EUspDBNiAAAA:8 a=ZS3UFk-b-OyYpVL8qdMA:9 a=QEXdDO2ut3YA:10 a=dtxw0mqMjrQA:10
 a=efpaJB4zofY2dbm2aIRb:22 a=hQL3dl6oAZ8NdCsdz28n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_08,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020119

On Tue, Mar 25, 2025 at 7:33=E2=80=AFPM Mukesh Ojha
<mukesh.ojha@oss.qualcomm.com> wrote:
>
> On Fri, Mar 14, 2025 at 12:19:31PM +0100, Lorenzo Pieralisi wrote:
> > On Mon, Mar 03, 2025 at 01:08:31PM -0800, Elliot Berman wrote:
> > > From: Elliot Berman <elliot.berman@oss.qualcomm.com>
> > >
> > > SoC vendors have different types of resets and are controlled through
> > > various registers. For instance, Qualcomm chipsets can reboot to a
> > > "download mode" that allows a RAM dump to be collected. Another examp=
le
> > > is they also support writing a cookie that can be read by bootloader
> > > during next boot. PSCI offers a mechanism, SYSTEM_RESET2, for these
> > > vendor reset types to be implemented without requiring drivers for ev=
ery
> > > register/cookie.
> > >
> > > Add support in PSCI to statically map reboot mode commands from
> > > userspace to a vendor reset and cookie value using the device tree.
> >
> > I have managed to discuss a little bit this patchset over the last
> > few days and I think we have defined a plan going forward.
> >
> > A point that was raised is:
> >
> > https://man7.org/linux/man-pages/man2/reboot.2.html
> >
> > LINUX_REBOOT_CMD_RESTART2 *arg command, what is it supposed to
> > represent ?
> >
> > Is it the mode the system should reboot into OR it is the
> > actual command to be issued (which is what this patchset
> > implements) ?
> >
> > LINUX_REBOOT_CMD_RESTART "..a default restart..."
> >
> > It is unclear what "default" means. We wonder whether the
> > reboot_mode variable was introduced to _define_ that "default".
> >
> > So, in short, my aim is trying to decouple reboot_mode from the
> > LINUX_REBOOT_CMD_RESTART2 *arg command.
> >
> > I believe that adding a sysfs interface to reboot-mode driver
> > infrastructure would be useful, so that the commands would
> > be exposed to userspace and userspace can set the *arg command
> > specifically to issue a given reset/mode.
> >
> > I wonder why this is not already in place for eg syscon-reboot-mode
> > resets, how does user space issue a command in those systems if the
> > available commands aren't exposed to userspace ?
> >
> > Is there a kernel entity exposing those "modes" to userspace, somehow ?
> >
> > > A separate initcall is needed to parse the devicetree, instead of usi=
ng
> > > psci_dt_init because mm isn't sufficiently set up to allocate memory.
> > >
> > > Reboot mode framework is close but doesn't quite fit with the
> > > design and requirements for PSCI SYSTEM_RESET2. Some of these issues =
can
> > > be solved but doesn't seem reasonable in sum:
> > >  1. reboot mode registers against the reboot_notifier_list, which is =
too
> > >     early to call SYSTEM_RESET2. PSCI would need to remember the rese=
t
> > >     type from the reboot-mode framework callback and use it
> > >     psci_sys_reset.
> > >  2. reboot mode assumes only one cookie/parameter is described in the
> > >     device tree. SYSTEM_RESET2 uses 2: one for the type and one for
> > >     cookie.
> >
> > This can be changed and I think it should, so that the reboot modes
> > are exposed to user space and PSCI can use that.
> >
> In the case of a regular reboot or panic, the reboot/panic notifiers run
> first, followed by the restart notifiers. The PSCI reset/reset2 should
> be the last call from Linux, and ideally, this call should not fail.
>
> Reboot mode notifiers =3D> restart notifiers or Panic notifiers =3D> rest=
art
> notifiers
>
> So, if I understand correctly, you mean that we can change the reboot
> mode framework to expose the arguments available to user space. We can
> extend it to accept magic and cookies, save them in the reboot
> framework, and retrieve them via a call from PSCI during a regular
> reboot or panic based on the current arguments. Is this leading towards
> writing an ARM-specific PSCI-reboot-mode driver, which in its reboot
> notifier callback saves the magic and cookies, and these magic and
> cookies will be used during psci_sys_reset2()? Or is there something
> wrong with my understanding?

In case this mail got lost in your inbox, I wanted to float this up
again as this is a very important ARM feature and
its future course of action depends on the common understanding.

-Mukesh

