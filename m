Return-Path: <devicetree+bounces-193579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36952AFAF5D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FECA7AB792
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70A0F19DFAB;
	Mon,  7 Jul 2025 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gRn+Zj9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45B2274FFE
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751879719; cv=none; b=QuOyqnd9+vRp0VeR8LG2EecNMmYXWfwgI55Ul0VB4xtUfQ1QAForai945LT4xtaTrE8GfbBOSDYz0cVgXQm0GID1HJgzGnxWm8wBZ6lSFBkku0+0Am+3QWQL6gTgMeYwo8PgbG5YtV5CH1H0ITi9SmtdV/kNfMwl86LJzl14jV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751879719; c=relaxed/simple;
	bh=tjjCvBxWbRxuzfcmwgt2e14BCgemhZ17sHNnbJDoRqo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lR3dYPCRC/ARmZoHAzI3qhR8idNvdDyOHGkg30ybBumFrl00xM1nrDoVRlt/RMjVdfmF+a3BuMTW3VTog/1UEaq4ZQYWF49Psl4ZaS6Dg8Jamzz2EsrM7Fss/jbMjKb8oxIx9UMSFCUR5ttfDlzRWe8MsE4h2iJAeEY10r8DwA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gRn+Zj9b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56792B0c009634
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 09:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ngeouwKDCRN8FHS2Ov3SiLW7
	xuB2mIEuudvyrN1Stik=; b=gRn+Zj9bPJLipbfniCQ+2soZ1LekeEo3ru9DrdYp
	xpO1dZyRSt0kAkQoVyunkLhcb1W44MwZYyNrgEprB/4jKQa2CZ0LQqB6yR+X8xk8
	H7LZJKC+nBNzUK4hBGAX6ISwXfkZ0xGgev0DosLyJuyHUSmwxA0ea7tCdc+dog61
	yN0cHDZMaLf2oe0dsToMESJRStQKHAxMAGlj3NiTE4vf4fOYHgyPV2OviBI5gvcB
	xznn3wii1j8WznOX3hNVJSpoKnR+YSk5JUVlGsE2laiPYbFS+kzVakERlaIbQeby
	ZFNbhdF6Ksb7HVCqH7a7whGOGzfogP9IWEFZY4kIXnqENQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu0w3h9k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 09:15:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5bb68b386so826965285a.3
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751879713; x=1752484513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ngeouwKDCRN8FHS2Ov3SiLW7xuB2mIEuudvyrN1Stik=;
        b=IaITpHV7C3Mo0k6dXlbUFIE/uAqdO1Gv4w74gMZ2L74UXkmmwug3c6xh//KUqd+uxW
         eAAXGGjc8aqChK4nLBcpxJmZ+lWW1N+Wb9tNvvAmFIUsWMrUfHkI6RpFVzrLypI6s7wL
         HR6HnVrL8nvTCXzJfRjk8BnCRqB/xizH8iQDsn8lc7kcHsuAlxWlawBhCc849vZEcrSR
         2p9RoqNGZTZT3WBBcK49Q5Gl+WNYZtl0gNwyqipb4w8Lh52SoxvSTxy7D6VuWWzjmlDZ
         5gNkleV+SHj1j/x3i9uK/apsWm98faJlORLjpnGMharg/GtGlzixEgbMRRhw87rJvzLb
         bn3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUbyiFLFSIzTEwv5hSJEi1nWL4PfcEmBb97GmqxBSlXWahLMTHvfX4cXhLLumMN3eN3a2+L7ZywVc4M@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4AkaI3PQxEXm3i6XlMNKQ4lN1r6pH2MB9kTlKGu3U7PyC1kQ8
	3hLKGOA+dOJzYsJG5032gvEfG2nUi5gmnGQDK3yKsWEvN91d4fo2CyvQq58siscSdtZB7S3RC6c
	WbVzmaC/bd5Z7RWWsD2mqztL86Op80G815HEvO5xqwMAG3B0yAr+snU+LoReRncM+
X-Gm-Gg: ASbGncttf0akrOtMS7PCOm7zMiYge6oJAGkbu/yoiDnt75iYM50cYcRcvcv++/SQAko
	JpbZ9H6rB+DR/ThjpU0ZBw0XUjPemJ/7Xskv40zM2+je1tnPH20gh4BIWe3HTZFmJ4AELwga87p
	ApXtyudkz2PnkVWnr7P1d8O073Eo4aXWiaaOCqc9cIF6epva23Imw2DtnEdAlJ98UWK5r6sZr/v
	lw1zaw9Swl/6MWJh4Glc6lsL8iRmalzcwyooyuOJSe2XV2yMcgHOZGp6drOulDrW971Hhrxo5uE
	anmWZzVxMpqB66Xegcs8QhysEJYg4h8nfJIFMU+RJB98m3f9rezO7Ic=
X-Received: by 2002:a05:620a:1aa6:b0:7d2:26e8:e91b with SMTP id af79cd13be357-7d5f17e5c89mr925299785a.38.1751879713286;
        Mon, 07 Jul 2025 02:15:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpbSVqCx6tFJzqSoaUTECC1w7GfStZZinCZQdif7BWXOwJSsYmKAa+1rKlwK+D1nlqL0TnFg==
X-Received: by 2002:a05:620a:1aa6:b0:7d2:26e8:e91b with SMTP id af79cd13be357-7d5f17e5c89mr925296085a.38.1751879712780;
        Mon, 07 Jul 2025 02:15:12 -0700 (PDT)
Received: from trex (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453a85b3e2bsm97448195e9.0.2025.07.07.02.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:15:12 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 7 Jul 2025 11:15:10 +0200
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_dikshita@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: qcm2290: Add venus video node
Message-ID: <aGuQHk4tpPl8kAsz@trex>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-6-jorge.ramirez@oss.qualcomm.com>
 <6e330e8f-5856-ef8e-5fe3-52bd61b59e02@quicinc.com>
 <aF6PqCY/E6H0Mc2/@trex>
 <2722e70a-1080-c9f3-eb56-4a6e79084bdc@quicinc.com>
 <aF6z7iaicHyNXg6w@trex>
 <e704535c-0004-6dbd-bc81-b4ebc7747881@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e704535c-0004-6dbd-bc81-b4ebc7747881@quicinc.com>
X-Proofpoint-ORIG-GUID: eBv5Pt-XFHvpWiIAIaiip992tfnM2fZU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA1MiBTYWx0ZWRfX6hcWLkhqhWGz
 n/1ujtjPt3xLKPUWi9NoOQaxWIBdp/Gk0/cM+1bMdL93VImgugXZVlhGOLoUtTJABddiDlvRTrr
 A6Z3rE94KZil2gElQx2JQvmtSyrrG11NjzMpL+lLM2oc+iDvuEz4lipSZ2RIZ5F9VTG9q2vuws/
 NYgBpAsGy+3CmHFzVfA966z4JZGP/3saPLK56oJRux2wIa1bj8A/ZFiwIHxVAAnfH5DC2kRCdok
 eYcuedJh46gW5ptvVVMYG37hmtUKJGin0Whi8ypNXGq6X6/2tEz40EW/L0PsiDpPIuA5gW6Myfq
 IWkwNyd+GyqyQtbXK5HNNi8DqKS0m/H7Gh063JieEzmLTQhkbCwhHkFbRDDGUOTJ1oIpZAO9mOU
 pts5vH3x9xOuk3MMRCVs8/EuElQEa/cG44yDnH6NSC4fLuYpvya08jFlQc5i9YMArSnpp96Y
X-Authority-Analysis: v=2.4 cv=Rd2QC0tv c=1 sm=1 tr=0 ts=686b9022 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VQ7V1meLN1WFzF7lOz0A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: eBv5Pt-XFHvpWiIAIaiip992tfnM2fZU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_01,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070052

On 27/06/25 20:42:45, Vikash Garodia wrote:
> 
> On 6/27/2025 8:38 PM, Jorge Ramirez wrote:
> > On 27/06/25 20:28:29, Vikash Garodia wrote:
> >>
> >> On 6/27/2025 6:03 PM, Jorge Ramirez wrote:
> >>> On 27/06/25 17:40:19, Vikash Garodia wrote:
> >>>>
> >>>> On 6/26/2025 7:29 PM, Jorge Ramirez-Ortiz wrote:
> >>>>> Add DT entries for the qcm2290 venus encoder/decoder.
> >>>>>
> >>>>> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> >>>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> >>>>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 57 +++++++++++++++++++++++++++
> >>>>>  1 file changed, 57 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> >>>>> index f49ac1c1f8a3..5326c91a0ff0 100644
> >>>>> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> >>>>> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> >>>>> @@ -1628,6 +1628,63 @@ adreno_smmu: iommu@59a0000 {
> >>>>>  			#iommu-cells = <2>;
> >>>>>  		};
> >>>>>  
> >>>>> +		venus: video-codec@5a00000 {
> >>>>> +			compatible = "qcom,qcm2290-venus";
> >>>>> +			reg = <0 0x5a00000 0 0xf0000>;
> >>>>> +			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
> >>>>> +
> >>>>> +			power-domains = <&gcc GCC_VENUS_GDSC>,
> >>>>> +					<&gcc GCC_VCODEC0_GDSC>,
> >>>>> +					<&rpmpd QCM2290_VDDCX>;
> >>>>> +			power-domain-names = "venus",
> >>>>> +					     "vcodec0",
> >>>>> +					     "cx";
> >>>>> +			operating-points-v2 = <&venus_opp_table>;
> >>>>> +
> >>>>> +			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
> >>>>> +				 <&gcc GCC_VIDEO_AHB_CLK>,
> >>>>> +				 <&gcc GCC_VENUS_CTL_AXI_CLK>,
> >>>>> +				 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
> >>>>> +				 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
> >>>>> +				 <&gcc GCC_VCODEC0_AXI_CLK>;
> >>>>> +			clock-names = "core",
> >>>>> +				      "iface",
> >>>>> +				      "bus",
> >>>>> +				      "throttle",
> >>>>> +				      "vcodec0_core",
> >>>>> +				      "vcodec0_bus";
> >>>>> +
> >>>>> +			memory-region = <&pil_video_mem>;
> >>>>> +			iommus = <&apps_smmu 0x860 0x0>,
> >>>>> +				 <&apps_smmu 0x880 0x0>,
> >>>>> +				 <&apps_smmu 0x861 0x04>,
> >>>>> +				 <&apps_smmu 0x863 0x0>,
> >>>>> +				 <&apps_smmu 0x804 0xe0>;
> >>>> keep only the non secure ones.
> >>>
> >>> ok
> >>>
> >>>>> +
> >>>>> +			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
> >>>>> +					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> >>>>> +					<&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
> >>>>> +					 &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
> >>>>> +			interconnect-names = "video-mem",
> >>>>> +					     "cpu-cfg";
> >>>>> +
> >>>>> +			status = "okay";
> >>>>> +
> >>>>> +			venus_opp_table: opp-table {
> >>>>> +				compatible = "operating-points-v2";
> >>>>> +
> >>>>> +				opp-133000000 {
> >>>>> +					opp-hz = /bits/ 64 <133000000>;
> >>>>> +					required-opps = <&rpmpd_opp_low_svs>;
> >>>>> +				};
> >>>> Fix the corner freq value
> >>>
> >>> can you add some reference please?
> >>>
> >>> I took this data from an internal document - not sure why the downstream
> >>> driver supports different values or where those were taken from (AFAIK
> >>> they are not supported)
> >> Most likely you have referred incorrect downstream file. Refer scuba-vidc.dtsi.
> > 
> > I took them from actual documents (which might or might not be obsolete,
> > hard to say but they were the latest version and as such, they
> > contradict the downstream dtsi).
> > 
> > So I'd rather not use downstream - could you point me to the reference
> > you used please - I wonder if the fix is required downstream instead of here?
> 
> You can look for this file gcc-scuba.c and refer gcc_video_venus_clk_src which
> is the src for different venus clocks.

sure, but the question remains, how do I know these are correct when the
documentation I have claims the opposite?

AFAIK downstream could be wrong, no?

> 
> > 
> >> Again, good reference for such cases would IP catalogues and if not, gcc driver
> >> in this case which have structures defining different corners for
> >> video.
> > 
> > The PM document for this chip only confirms two values - the other 4 ones
> > claim they are not supported on 50_LT
> > 
> > but we can discuss offline.
> > 
> >>>
> >>>
> >>>>
> >>>> Regards,
> >>>> Vikash
> >>>>> +
> >>>>> +				opp-240000000 {
> >>>>> +					opp-hz = /bits/ 64 <240000000>;
> >>>>> +					required-opps = <&rpmpd_opp_svs>;
> >>>>> +				};
> >>>>> +			};
> >>>>> +		};
> >>>>> +
> >>>>>  		mdss: display-subsystem@5e00000 {
> >>>>>  			compatible = "qcom,qcm2290-mdss";
> >>>>>  			reg = <0x0 0x05e00000 0x0 0x1000>;

