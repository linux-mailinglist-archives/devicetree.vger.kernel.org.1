Return-Path: <devicetree+bounces-256700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA974D3A038
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAF3D30071A8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169393376A2;
	Mon, 19 Jan 2026 07:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cpRtWDbv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HeTnsd7z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2203370E5
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808609; cv=none; b=rirUtMHN9QDURizb0tURoiEs8LL/1+SHQ4aPLQyaxkDpgAE7CNM4Z01FkCyKpIbj+NfjU9FW7w+yC8FSXh+7nttU0FEzIF9qVEKOVEj6zPJfKEa/9PZuYq3yjY5qxr9w1EsvSFhTcNRZaMQkzsLHuOrUIa5gLthkIc2REnnnnq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808609; c=relaxed/simple;
	bh=/swWTUUaewJol5eLVQZeUEHeoi895l1wUo5YFe6FDUA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TmPIUMp8IHl7ispr0t7WvswjzPE6l4ZEvV8Vw5pZ8BD78nUP1x9ZB+d6foyG9OZ1slR/RJPUQgpynjLE3edfyk5eaAYQ0xepQhzqJhhY4z8fT8v8WtjzlHi6+zJjxpB5nyDXwbtr/+QUluVR0LlEZCK+Wy9krSMsW18lC6jHFyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cpRtWDbv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HeTnsd7z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J0F28M332982
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sqs/F/2/YOQrc9DJeKhuSakRiBHn7pAQ8sQntrUq4a8=; b=cpRtWDbvofJaBwHp
	aYflmSX3GJifj1zmlqVCtBttzW7ihBsAbZGz4VTDTZQAaNXpC7T7BvKsygg6u4z1
	fIqKM2EBphdgdAXx5Ut1f5yZIMeq2nsobJ2t39zxC0IoncJDFwccO9YgvBLdrWcV
	ZbnA4ydw59TtDSf3YaXi2+eB7tpBVZnAOuG8cybl43nIEsey0/1iblVjnGjJ2L/i
	0mGPXI/5fafGpZBwqlx1K+VbJJOhc0lh0b7eYzRD7IJW4lv5Auhj8B4UPI5o0ZHy
	0Uga9F7erPH+9pgRLz2hSv1fwdsD2ZetzAV/leF+jLUEcsTCS/bcO5L2Jlgj/kxL
	j+ZOSA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2gum6pa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:43:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a341ac9fso694537285a.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768808606; x=1769413406; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sqs/F/2/YOQrc9DJeKhuSakRiBHn7pAQ8sQntrUq4a8=;
        b=HeTnsd7zpU/fpnO921v9dTfpp4N2mblVQD7BGVdU7GrvPGFCyiyne2auPektA0hX6Z
         ZcnoZ5N2m5eIFLAiZnNri8w8v/2ERvydQifgpsMXaHMCNMwRu7NuMOQXka3pJC99SzQc
         YtS5jvuqyzB3NfT5hUdCteVNToTAfcS6aA/8GdcHeFyA1WcJq12xaEmpsGGKdT2xU1pA
         PkGStK5RHeybcy1u9+sgmD64ilSgB/BQ1kCsfqOOmxf2Ko1K0q9uCFLwkCM8A+FYpI3w
         QY6ML5Bh+alA/+nIZDUgx3+CkT4NAXCGnKSH8Zn0ymC6wYym4IPKO3cWcj7vD1oX4kOW
         WRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768808606; x=1769413406;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sqs/F/2/YOQrc9DJeKhuSakRiBHn7pAQ8sQntrUq4a8=;
        b=SgqAW+ydne2z7X+2QnJEZnQvJY6niCyLoundOKRzOanlSRaXBAYm1H2g2vWsaCYutb
         Wtk/6787vkiLtrjDp3c1lJli30iddfNyrvW7lg6lORU06cHqJ//xiHDjJ2pzmhVyrNLp
         pi8GIriYiR+6mTricxUNJVb60eK2iO8q7z50vEAjPc5OLYCsV/lA7+f912gv/Kb0JTa1
         PuVM1yz95bij2sDkYlBGT/hlFu7+3aJc8g2iIfQw0i4iRZCJV4Qh49+DdYyxrgW7BL8O
         Cc3iQ2+tHDz+fUCLy/J/PsX0B3erC4bg/1JrPPtBwqxf/goW80JZg/jve2U7eCLerRG2
         IYZA==
X-Forwarded-Encrypted: i=1; AJvYcCWOzF8huUwm87hXarmnYcFe2ykO8PX12DuOPNPpGgB8ABzazLt8cG7+15xNpyFdV2kG6uWYCTVMgVAQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr/XwHZOjsGI0UEmgg+fbQh8SsUvYB2EyzG+qwXQZMSF9GGOS7
	g+xIAJDmf6udzLUF9HiwuArxuCUhpnZYy2b5VW5lLSJoCbxLBZsuvHfZ+eEbdMPE3dqUrNzllpa
	hmTDLQXoRSYZnCmZxrAEZ1SfLK1oKnojYM9V1Jbq1Xc2xMbfTaD39v/sDrNFwfcoB
X-Gm-Gg: AY/fxX5Y2LdfYHQgrao7amrvu1dtYtqM7D8gHtDVdkLuMfwTFqbNvPMhejiAu/GH/M9
	iRkaB4b8Sk6oG1ApXlsKLaaPTS4EjJDcHNSWtV/hwLlN0810qAUuqT922vq55SGUi4n/TijafEM
	9XUNf04vnA1I2KUUAt7XHI4+fCBCe5dao0NzcXps9k1LkUrEZ5anh6zO+dHKp2vIVewjbqjNRLj
	qxDTTPLzHKfzqBP8jjB+p/+Ut9dmZmK98nAOF8PtIcdfDqw9j0hmpgsiDyXRAPUgiGPkMSyLRkl
	hBGEGTXA5ygDm2Kps3E7KlJY6P+V+WS3T+MWJd2q4s4iZ+iBa1luJjIht2mdZMRlt8SHOMZnBg4
	S6307vKBKQqzwVA54nRNAXkWt1wyyVnWD6rOG4XPoMbljLO6RF7vKjlbWQ1mFNsIhGRDKFGnCyi
	XbSMr9unNEdnPgsTHJZDYSYhw=
X-Received: by 2002:a05:620a:294a:b0:8b2:598d:6e89 with SMTP id af79cd13be357-8c6a6770654mr1586313585a.45.1768808605685;
        Sun, 18 Jan 2026 23:43:25 -0800 (PST)
X-Received: by 2002:a05:620a:294a:b0:8b2:598d:6e89 with SMTP id af79cd13be357-8c6a6770654mr1586310685a.45.1768808605214;
        Sun, 18 Jan 2026 23:43:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf33ef74sm3097431e87.17.2026.01.18.23.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 23:43:24 -0800 (PST)
Date: Mon, 19 Jan 2026 09:43:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
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
Message-ID: <yphbxji7vyeglpejpgoia56ch5xco4u5lripjavz2cufe757sx@4rphsnh2sq7c>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
 <qy4bp2hz3ivwydsk4sblxpgthz5hw4rn7r3ezaim5wf5fgm4sg@meispnp6wthj>
 <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com>
 <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
 <CAHz4bYtYMZQSdw4XKSB06fT2MzZHu=AgdXGrZ73XVXi1sMwyyw@mail.gmail.com>
 <zkvwy56jkya6eogwqlmbhoo64zlzatxsdtkhy4hqfudoqtfbkg@fwiy46l3c337>
 <CAHz4bYuE6LS=+3272x2qat7EyjgVuODC7Otz_f4zP78ZQ=BWDA@mail.gmail.com>
 <53dojwu2xfshqaii3dzmglhjsne75jyf5r6ycerbr32w4v3rlf@umkbjczudotn>
 <f2a9a7f5-f406-439e-8d86-94e98b2e18e9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f2a9a7f5-f406-439e-8d86-94e98b2e18e9@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA2MiBTYWx0ZWRfX62oHsltVJ7Xn
 HzoWxq2psv2iwDJURQTXH9ArP4Z9sD6/mpKj3a4EnqFRhgJFNXCjdf2bIe+fcEgGDRT96zqo64f
 5V0DQalWxmQC09X3kpGNrX9ziFz4Afptf5negZih0ku0KDjQf3JSKxXQClKcOnalcdkJKAdW5DK
 +4K6sn/YetllUrXkHNhpXpsJfc3XqoUrS+ypnHbS6hKq48Ci6q0wqRf7yW3AxhooqJuYpOShRon
 il/t2Uk6hUjcjOYYLmrrqjk8M2WyFLd7p2HKGwuXt0r0y/CWcTx7GTK4vqp+FToksGbXmagvxMq
 S5+K7CvHhxw9Z4A/18oQmi8ANsWPqbDD5+A7Sz9GLS3Db23qOHQcdPPkrPe/e/LLXbfYdowN65v
 xOu+kBh9+g05e/E3XfQURNpZ+piC+AjrxpiPxP3qXWLzn3jLHGIlj65+NORxeGWPy/vZm1+AHq9
 gJbrFd+vHtYcy9AiYkA==
X-Authority-Analysis: v=2.4 cv=Sev6t/Ru c=1 sm=1 tr=0 ts=696de09e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-rT3G0NTX_r5oteG3ekA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: pnTs2TUuSB4GqLybbC8Uu82EW0bWr9R-
X-Proofpoint-ORIG-GUID: pnTs2TUuSB4GqLybbC8Uu82EW0bWr9R-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190062

On Mon, Jan 19, 2026 at 01:06:28PM +0530, Krishna Kurapati wrote:
> 
> 
> On 1/19/2026 12:01 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 19, 2026 at 09:42:03AM +0530, Swati Agarwal wrote:
> > > On Wed, Jan 14, 2026 at 11:39 AM Dmitry Baryshkov
> > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > 
> > > > On Wed, Jan 14, 2026 at 11:10:26AM +0530, Swati Agarwal wrote:
> > > > > On Tue, Jan 13, 2026 at 4:59 PM Dmitry Baryshkov
> > > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > > > 
> > > > > > On Tue, Jan 13, 2026 at 01:32:41PM +0530, Swati Agarwal wrote:
> > > > > > > On Sat, Dec 20, 2025 at 9:47 PM Dmitry Baryshkov
> > > > > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > > > > > 
> > > > > > > > On Sat, Dec 20, 2025 at 12:05:37PM +0530, Swati Agarwal wrote:
> > > > > > > > > Enable secondary USB controller in host mode on lemans EVK Platform.
> > > > > > > > > 
> > > > > > > > > For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
> > > > > > > > > ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
> > > > > > > > > lines run from the SoC through the hub to the Port controller. Mark the
> > > > > > > > > second USB controller as host only capable.
> > > > > > > > > 
> > > > > > > > > Add HD3SS3220 Type-C port controller along with Type-c connector for
> > > > > > > > > controlling vbus supply.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > > > > > > ---
> 
> [...]
> 
> > > > > > > > > +&usb_1 {
> > > > > > > > > +     dr_mode = "host";
> > > > > > > > > +
> > > > > > > > > +     #address-cells = <1>;
> > > > > > > > > +     #size-cells = <0>;
> > > > > > > > > +
> > > > > > > > > +     status = "okay";
> > > > > > > > > +
> > > > > > > > > +     usb_hub_2_x: hub@1 {
> > > > > > > > > +             compatible = "usb5e3,610";
> > > > > > > > > +             reg = <1>;
> > > > > > > > > +             peer-hub = <&usb_hub_3_x>;
> > > > > > > > > +             #address-cells = <1>;
> > > > > > > > > +             #size-cells = <0>;
> > > > > > > > > +
> > > > > > > > > +             ports {
> > > > > > > > > +                     #address-cells = <1>;
> > > > > > > > > +                     #size-cells = <0>;
> > > > > > > > > +
> > > > > > > > > +                     port@1 {
> > > > > > > > > +                             reg = <1>;
> > > > > > > > > +
> > > > > > > > > +                             usb_hub_2_1: endpoint {
> > > > > > > > > +                                     remote-endpoint = <&usb1_hs_in>;
> > > > > > > > > +                             };
> > > > > > > > 
> > > > > > > > Are all other ports disconnected? If so, why do we need a hub?
> > > > > > > Hi Dmitry,
> > > > > > > I didn't understand your query, can you give more context to it?
> > > > > > 
> > > > > > You have described one port of the hub. How are other ports routed? Are
> > > > > > they connected to outer ports? To some other devices? Unconnected?
> > > > > Hi Dmitry,
> > > > > I would like to put it this way, USB HUB has 4 ports but only one port
> > > > > of the hub is used between SOC and Type-C controller.
> > > > > Remaining 3 ports are used by other devices.
> > > > 
> > > > Which devices?
> > > Hi Dmitry,
> > > 
> > > For Lemans EVK standalone corekit board, there are 4 ports as follows:-
> > > 
> > > 1) p1 is connected to type c port controller.
> > > 2) p4 is used for the m.2 E key (NFA765 Bluetooth) on corekit. This
> > > isn't used on a standard core kit, only if we optionally replace the
> > > wifi card with the NFA765 which uses USB for BT. standard kits all use
> > > UART for BT.
> > 
> > Nice. Hopefully Mani patches will be landed soon and we can describe
> > this one properly.
> > 
> > > 
> > > Remaining 2 ports will become functional when the interface plus
> > > mezzanine is stacked on top of corekit.
> > > 
> > > 3) p2 is connected to another hub which is present on the mezz through
> > > which 4 type-A ports are connected.
> > > 4) p3 is used for the m.2 B key for a 5G card when the mezz is connected.
> > 
> > Please add a comment for these two, e.g. routed to the connector ABCDEF.
> > 
> 
> Hi Dmitry,
> 
>  Thanks for the review. Can we send v4 with the following changes:
> 
>  Add 4 ports each to hs and ss hub nodes and link the first port to Type-C
> connector and add comments for the other 3 ports. When M.2 E conncetor comes
> up, we can link the second port to it in a different patch.

Sounds perfect, thank you!

> 
>  Let me know if the above is reasonable.
> 
> Regards,
> Krishna,

-- 
With best wishes
Dmitry

