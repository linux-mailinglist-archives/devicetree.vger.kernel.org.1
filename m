Return-Path: <devicetree+bounces-256663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FE9D39E84
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1065F30369B0
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79E4D266B72;
	Mon, 19 Jan 2026 06:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DtWx8agv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ct8PLkod"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3FB242D9D
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804308; cv=none; b=KQ/kdMWE3LfOmPjr7A/srAsr4cI4GWFQ2qZBcPmr0iKNzZKjgCReVyWOTGCaQY/q6MDcykrMgzwHl6SrUGRW/5Qc6g9LSLbODCvvJgoP5jlyt7HTXU8TQUp20jLN3q1srITo44viR0AgK3z4mgkbGf8xod1JsKfgjaU0vEqSFJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804308; c=relaxed/simple;
	bh=mowrEMCvMX3BNq2MuCp1R/Db5ca+AhadSpeg7pAbOIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=genXNj04N5iqZhxUp1avBA+k/YA8dFhtPtuGQKqpvbQT2HGlpbRMJpQEn4YP6k8qQX/Ejinvl2CP8e9SpeF08A31HBDp0/Z40qI4h5YjtDIpgXOysmr3z+XRZYK7BTpIWFO9e0wVcUcXUj7fgFI6TJDkW99qGL76eT+rI85TCLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DtWx8agv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ct8PLkod; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60ILZo7f3789131
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:31:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	39IHaT68Vf8IQzZuFyyoaYtDPnw+AkmfIxQWdIdVv6c=; b=DtWx8agvDYvYDxdJ
	HtN5lG2e2i8m4tbjspGX0hUFAPcMyN9CfmLXvaphcQdIhlI4ywzIX11h93ATczOU
	cVCOME6rNPgKk4hGMsmOlDnGDpTgUZGasKgPCTIIuXp4Odpm73FLz94XCEvUtxO/
	leSoj1GSdPjn4sTCWa3fPPQSYWdE1f0Eha/3d3ocsGFIPe3CwQb2gio2AroRg9Uw
	hlhoPoxEnENyKHNkwtpXm+pA7kyKj9JrLikcjZ9KYbK8xZT/sLbT2xVcRtdT8eEw
	5xN3U0uN/L7A1XiE+0uu0/gHyGDKVTcO78+Y5VrQiKynVwqm+itr/wkw6HU2iJj+
	q8DFGA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bs79egx9a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:31:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52c921886so520588985a.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768804305; x=1769409105; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=39IHaT68Vf8IQzZuFyyoaYtDPnw+AkmfIxQWdIdVv6c=;
        b=ct8PLkodTYTqtT6bbF29kqtheM0H74rUXZeB1Zp2/nss0nH54AKq8yinr4qK+r1i62
         6LsaLI+y6A7+btGiVm3+sSo7OqURAmpBjFI2ZCf9XWN189rHPO/W4oYZP09gvxiWIVSq
         gvs/HrnJ3XVH4mLu/GvuDo7qBMGl2VY8P78CSfFh0D4//68zxCYGCzn9ep9tu3KXXpm8
         hmTElfuembPuFGC1BCJJfcE5ugMgr18PdPXGKcV++8hVG8K2onI7S6zuYsIt+LBUvY3t
         kMwUfJBGVvtXNrih4skh9B2FnFe0MsylhQzg9yDlNgVi3xM8U9ENWaByh+8O+BQXBNiG
         c4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768804305; x=1769409105;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=39IHaT68Vf8IQzZuFyyoaYtDPnw+AkmfIxQWdIdVv6c=;
        b=Kliin2Mj/Vx1SIjo6uOOHgK4GkvSaIPz7w51plsrWOwxq1gCtTYN/yY6yruj10ihyP
         FQ0/YWqRAEics5pkrd8sFLZDz356vAblHhsQ1IAZkHnlP3v30+0zgrGPlzLG1adYBGPM
         iUyWXgFrQmV8WAGFls55JdcKqxf/M/cMXxg3vQ1YHbNwqGNaIfkZOeZuysQCsgaFhwT+
         +dfyHkkdb2PEOL63cOh15Zob7rfxhfvAF3KxDGYzwiGXF2B5bkNKsBKIzXCD8MbDaBJi
         x5wDnVggPONpCU3SMBqcql6HSdUhGvlfH74iyorXVZK9fgeKcYzns7OnZcr7W6+/rmjC
         3XKw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ/ioWmoQ6CDvrGXPWvYddyX2d0GkZ/v3X0idh3M0+h7mdugS3AIoPH1LKldAcje04NxMvF9fZF9Z/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4K4XBIFHxrCBTBSp0vCuLszgMbdgi6fbBV6spjmzqedf0VjUp
	E7Er64xPAduWdfrwrq0W1u5miUtkStC5OMwyzuojaGexro5dssjnJkMiS91BE+JopiMIRSzMWoF
	WrtLCnoC2a5vVRETx+4PqEPacpu/djgrfpc6uOUwOugt2Mr5Ohyh/+NLRU1wHgLdt
X-Gm-Gg: AY/fxX7XRv0VRerSQrqTZ1qHptWr1bflxEhjzVmfN8zx0FQkAGWnwmKvyBw26xGknXZ
	nuey7nUIQ/FVDZgVnUYAyLsz9TYun9VJ3bftWKS6hnN6rWWqci8svF1H39UTudVLHUAJ03QyV2W
	cEzjSwLnq105+mWCNXxr3ybACO5Kn0aDqOXkI2+8tZetYbcE/7fpSGbjaNyleAx1in12oBTfdfo
	IFA/mxWfupi2+MZGbpaBptD1tTXedbURU8bbEix4DsrqxCY6uxc5LHyrt/hbCcumWoNcfCrrqom
	TQ0HOSYgg+nyrKYDPlB8Jt6Rg0NSGPM/03Njkq9+5v/FH1c9ZmAm0gC9Aa0iTrKs3ZAgpzKKHvM
	tpnpjJtbiNZs36RuiejoxHJ2h29zYiAxasbMnzjSX389oUEz9wvW0YlR4qftI9zWND5hzPUHUwm
	zrn3P3qm9sUjefxIIJgx4mXu4=
X-Received: by 2002:a05:620a:700f:b0:8b2:e88e:a518 with SMTP id af79cd13be357-8c6a67b0cc3mr1436610785a.68.1768804304804;
        Sun, 18 Jan 2026 22:31:44 -0800 (PST)
X-Received: by 2002:a05:620a:700f:b0:8b2:e88e:a518 with SMTP id af79cd13be357-8c6a67b0cc3mr1436609285a.68.1768804304287;
        Sun, 18 Jan 2026 22:31:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c12fsm3011779e87.83.2026.01.18.22.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 22:31:43 -0800 (PST)
Date: Mon, 19 Jan 2026 08:31:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        J =?utf-8?Q?=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary
 USB controller in host mode
Message-ID: <53dojwu2xfshqaii3dzmglhjsne75jyf5r6ycerbr32w4v3rlf@umkbjczudotn>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
 <qy4bp2hz3ivwydsk4sblxpgthz5hw4rn7r3ezaim5wf5fgm4sg@meispnp6wthj>
 <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com>
 <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
 <CAHz4bYtYMZQSdw4XKSB06fT2MzZHu=AgdXGrZ73XVXi1sMwyyw@mail.gmail.com>
 <zkvwy56jkya6eogwqlmbhoo64zlzatxsdtkhy4hqfudoqtfbkg@fwiy46l3c337>
 <CAHz4bYuE6LS=+3272x2qat7EyjgVuODC7Otz_f4zP78ZQ=BWDA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHz4bYuE6LS=+3272x2qat7EyjgVuODC7Otz_f4zP78ZQ=BWDA@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1MSBTYWx0ZWRfX4fXTIrpkoFRS
 JsMtXWgjMrWPakWSpnTEjBH1GmRk0swvmv7DE/RRueFNcKnIDjwR+a7XcHBZQjWg4U8KWoElTp2
 p2BWDMV2gc/s/PG6vD+NJK5hkzAJcBOrIxnQO8agDb30y9OetLboikc9WF2tZU3ArhDlE0HjTqw
 V1C1dpQLMr6MWfRnNNiKhYtSSr1g4VaqVEwNhAmIrWG29MDrg5v/YejI3kqiuCqPO1sXJeg0WWq
 7Rg56SekyecZtPYiaNe5lqCglIOuhetk9Gn1f07vfs9XwPvhhMgNAm+SUYu2AX3RNni/9YDBhHQ
 9SWQ3WMmnpPOEt7GYIqBd1IqBvassuAj5Du6TjZzJu1ytfQaxtYXVAlFehejCYTlHFF/I7lYveg
 RSwlGE+pXoAlkPV50eWHHsPltLd83+W24G9GIPqNrMYkma2kAZbiSYVspzJW1pWum+StnbUS2nJ
 bOAoIGr0CQDcpKWGH7w==
X-Authority-Analysis: v=2.4 cv=NY3rFmD4 c=1 sm=1 tr=0 ts=696dcfd2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PfNFyLecqpYgpyx3E0YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: TFfGaCVel6qNaQjLDL74B5ErplZYaBZZ
X-Proofpoint-GUID: TFfGaCVel6qNaQjLDL74B5ErplZYaBZZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190051

On Mon, Jan 19, 2026 at 09:42:03AM +0530, Swati Agarwal wrote:
> On Wed, Jan 14, 2026 at 11:39 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Wed, Jan 14, 2026 at 11:10:26AM +0530, Swati Agarwal wrote:
> > > On Tue, Jan 13, 2026 at 4:59 PM Dmitry Baryshkov
> > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > >
> > > > On Tue, Jan 13, 2026 at 01:32:41PM +0530, Swati Agarwal wrote:
> > > > > On Sat, Dec 20, 2025 at 9:47 PM Dmitry Baryshkov
> > > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > > >
> > > > > > On Sat, Dec 20, 2025 at 12:05:37PM +0530, Swati Agarwal wrote:
> > > > > > > Enable secondary USB controller in host mode on lemans EVK Platform.
> > > > > > >
> > > > > > > For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
> > > > > > > ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
> > > > > > > lines run from the SoC through the hub to the Port controller. Mark the
> > > > > > > second USB controller as host only capable.
> > > > > > >
> > > > > > > Add HD3SS3220 Type-C port controller along with Type-c connector for
> > > > > > > controlling vbus supply.
> > > > > > >
> > > > > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > > > > ---
> > > > > > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 158 ++++++++++++++++++++++++
> > > > > > >  1 file changed, 158 insertions(+)
> > > > > > >
> > > > > > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > > > index 70d85b6ba772..d72639479d75 100644
> > > > > > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > > > @@ -67,6 +67,47 @@ usb0_con_ss_ep: endpoint {
> > > > > > >               };
> > > > > > >       };
> > > > > > >
> > > > > > > +     connector-1 {
> > > > > > > +             compatible = "usb-c-connector";
> > > > > > > +             label = "USB1-Type-C";
> > > > > > > +             data-role = "host";
> > > > > > > +             power-role = "dual";
> > > > > > > +             try-power-role = "source";
> > > > > > > +
> > > > > > > +             vbus-supply = <&vbus_supply_regulator_1>;
> > > > > > > +
> > > > > > > +             ports {
> > > > > > > +                     #address-cells = <1>;
> > > > > > > +                     #size-cells = <0>;
> > > > > > > +
> > > > > > > +                     port@0 {
> > > > > > > +                             reg = <0>;
> > > > > > > +
> > > > > > > +                             usb1_con_ss_ep: endpoint {
> > > > > > > +                                     remote-endpoint = <&hd3ss3220_1_in_ep>;
> > > > > > > +                             };
> > > > > > > +                     };
> > > > > > > +
> > > > > > > +                     port@1 {
> > > > > > > +                             reg = <1>;
> > > > > > > +
> > > > > > > +                             usb1_hs_in: endpoint {
> > > > > > > +                                     remote-endpoint = <&usb_hub_2_1>;
> > > > > > > +                             };
> > > > > > > +
> > > > > > > +                     };
> > > > > > > +
> > > > > > > +                     port@2 {
> > > > > > > +                             reg = <2>;
> > > > > > > +
> > > > > > > +                             usb1_ss_in: endpoint {
> > > > > > > +                                     remote-endpoint = <&usb_hub_3_1>;
> > > > > > > +                             };
> > > > > > > +
> > > > > > > +                     };
> > > > > > > +             };
> > > > > > > +     };
> > > > > > > +
> > > > > > >       edp0-connector {
> > > > > > >               compatible = "dp-connector";
> > > > > > >               label = "EDP0";
> > > > > > > @@ -140,6 +181,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
> > > > > > >               enable-active-high;
> > > > > > >       };
> > > > > > >
> > > > > > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > > > > > +             compatible = "regulator-fixed";
> > > > > > > +             regulator-name = "vbus_supply_1";
> > > > > > > +             gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > > > > > +             regulator-min-microvolt = <5000000>;
> > > > > > > +             regulator-max-microvolt = <5000000>;
> > > > > > > +             regulator-boot-on;
> > > > > > > +             enable-active-high;
> > > > > > > +     };
> > > > > > > +
> > > > > > >       vmmc_sdc: regulator-vmmc-sdc {
> > > > > > >               compatible = "regulator-fixed";
> > > > > > >
> > > > > > > @@ -527,6 +578,33 @@ hd3ss3220_0_out_ep: endpoint {
> > > > > > >                       };
> > > > > > >               };
> > > > > > >       };
> > > > > > > +
> > > > > > > +     usb-typec@47 {
> > > > > > > +             compatible = "ti,hd3ss3220";
> > > > > > > +             reg = <0x47>;
> > > > > > > +
> > > > > > > +             interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
> > > > > > > +
> > > > > > > +             id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > > > > > +
> > > > > > > +             pinctrl-0 = <&usb1_id>, <&usb1_intr>;
> > > > > > > +             pinctrl-names = "default";
> > > > > > > +
> > > > > > > +             ports {
> > > > > > > +                     #address-cells = <1>;
> > > > > > > +                     #size-cells = <0>;
> > > > > > > +
> > > > > > > +                     port@0 {
> > > > > > > +                             reg = <0>;
> > > > > > > +
> > > > > > > +                             hd3ss3220_1_in_ep: endpoint {
> > > > > > > +                                     remote-endpoint = <&usb1_con_ss_ep>;
> > > > > > > +                             };
> > > > > > > +                     };
> > > > > > > +
> > > > > > > +             };
> > > > > > > +     };
> > > > > > > +
> > > > > > >  };
> > > > > > >
> > > > > > >  &i2c18 {
> > > > > > > @@ -690,6 +768,14 @@ usb0_intr_state: usb0-intr-state {
> > > > > > >               bias-pull-up;
> > > > > > >               power-source = <0>;
> > > > > > >       };
> > > > > > > +
> > > > > > > +     usb1_intr: usb1-intr-state {
> > > > > > > +             pins = "gpio6";
> > > > > > > +             function = "normal";
> > > > > > > +             input-enable;
> > > > > > > +             bias-pull-up;
> > > > > > > +             power-source = <0>;
> > > > > > > +     };
> > > > > > >  };
> > > > > > >
> > > > > > >  &qup_i2c19_default {
> > > > > > > @@ -849,6 +935,12 @@ usb_id: usb-id-state {
> > > > > > >               function = "gpio";
> > > > > > >               bias-pull-up;
> > > > > > >       };
> > > > > > > +
> > > > > > > +     usb1_id: usb1-id-state {
> > > > > > > +             pins = "gpio51";
> > > > > > > +             function = "gpio";
> > > > > > > +             bias-pull-up;
> > > > > > > +     };
> > > > > > >  };
> > > > > > >
> > > > > > >  &uart10 {
> > > > > > > @@ -903,6 +995,72 @@ &usb_0_qmpphy {
> > > > > > >       status = "okay";
> > > > > > >  };
> > > > > > >
> > > > > > > +&usb_1 {
> > > > > > > +     dr_mode = "host";
> > > > > > > +
> > > > > > > +     #address-cells = <1>;
> > > > > > > +     #size-cells = <0>;
> > > > > > > +
> > > > > > > +     status = "okay";
> > > > > > > +
> > > > > > > +     usb_hub_2_x: hub@1 {
> > > > > > > +             compatible = "usb5e3,610";
> > > > > > > +             reg = <1>;
> > > > > > > +             peer-hub = <&usb_hub_3_x>;
> > > > > > > +             #address-cells = <1>;
> > > > > > > +             #size-cells = <0>;
> > > > > > > +
> > > > > > > +             ports {
> > > > > > > +                     #address-cells = <1>;
> > > > > > > +                     #size-cells = <0>;
> > > > > > > +
> > > > > > > +                     port@1 {
> > > > > > > +                             reg = <1>;
> > > > > > > +
> > > > > > > +                             usb_hub_2_1: endpoint {
> > > > > > > +                                     remote-endpoint = <&usb1_hs_in>;
> > > > > > > +                             };
> > > > > >
> > > > > > Are all other ports disconnected? If so, why do we need a hub?
> > > > > Hi Dmitry,
> > > > > I didn't understand your query, can you give more context to it?
> > > >
> > > > You have described one port of the hub. How are other ports routed? Are
> > > > they connected to outer ports? To some other devices? Unconnected?
> > > Hi Dmitry,
> > > I would like to put it this way, USB HUB has 4 ports but only one port
> > > of the hub is used between SOC and Type-C controller.
> > > Remaining 3 ports are used by other devices.
> >
> > Which devices?
> Hi Dmitry,
> 
> For Lemans EVK standalone corekit board, there are 4 ports as follows:-
> 
> 1) p1 is connected to type c port controller.
> 2) p4 is used for the m.2 E key (NFA765 Bluetooth) on corekit. This
> isn't used on a standard core kit, only if we optionally replace the
> wifi card with the NFA765 which uses USB for BT. standard kits all use
> UART for BT.

Nice. Hopefully Mani patches will be landed soon and we can describe
this one properly.

> 
> Remaining 2 ports will become functional when the interface plus
> mezzanine is stacked on top of corekit.
> 
> 3) p2 is connected to another hub which is present on the mezz through
> which 4 type-A ports are connected.
> 4) p3 is used for the m.2 B key for a 5G card when the mezz is connected.

Please add a comment for these two, e.g. routed to the connector ABCDEF.

> 
> 
> Regards,
> Swati

-- 
With best wishes
Dmitry

