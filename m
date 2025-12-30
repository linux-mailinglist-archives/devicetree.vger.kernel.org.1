Return-Path: <devicetree+bounces-250613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 728F2CEA6C2
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DDBA43006FC9
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2184F32D44F;
	Tue, 30 Dec 2025 18:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BPXLLEXB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QBsuRG5v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA4631D72D
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118190; cv=none; b=G0h8L0EX8PrSJv3KiyKrxTytzr69Se0GYAIi6RuXSIfd7BrYOqTyffZx5n4uk9kk9wX9JjizlPzt89IugMcmu4tNvclHVbidOfLYxKsMqQSL6R47nKPEJO5ZWcxtpPUFaVoZLozZ4M8TZRVCowNsVHIUmZdzfnOmYRcE/rHRcrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118190; c=relaxed/simple;
	bh=JrSdVQs8umFznETgBJlE+gXeHhfL90x8ie9YdD53G1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xy2bh2nIDpJCIQjYjGkImVW1m6okLT4zXYAp3rfZHI4Ak4IFMIiwvYzbBayVXgxpjx/N3QKKrEejtA2JsyJXDUi49scVpX96NEfTDIWhisXBaKiaRFIMa3O/H9sxTjqzAx43MpI+wpZ6j067S8af3prjOP9YAGy2M9JHREsuQcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BPXLLEXB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QBsuRG5v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUCtdRF715181
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:09:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zxrwpCmrklVLd3dQvhy5lVUw
	gtJd/h93CSb4e5jlCrA=; b=BPXLLEXBsPw34p4n2MYC608hjPf56FSEz2azi6q5
	stJS8yullh+R9JVp3o8ivlYABdl4kJKEFkPsw36PXRMMLLtbukTDmqNdjrCP/HSK
	79iC1zaFf89Hx3PSnBRLWJ3aCze9rYrJafQgcKCwCTJiURAyYO5d3rdcKK6SddIX
	RbiuW03Ggjpkm0ActZ6Sw9I+3ewap8TarhlDvEE8BXhFSShM+GXaz41DLdrSPnN1
	mOSyNNcVpd4ptxyJmbss8mHs/qdv5RrCyAH6hgc/AoCcsoXDg0MY6HBpy2OAM68S
	MLzI7IedeNxuTBD8wFIhxEhm6/qYQ9mwn3t0fgpCnvHzmQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yrqcn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:09:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee3dfe072dso266570111cf.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767118185; x=1767722985; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zxrwpCmrklVLd3dQvhy5lVUwgtJd/h93CSb4e5jlCrA=;
        b=QBsuRG5vWv/pwnTdex1h3SaM8/3DrXlgsvxQ5hkueo0bqYFYTYJKCPniaS8XTPlwn4
         pwvUt7NA46eHZwVMqUGm99jNlhHrN7lrFW9W79bViv0lzHGeKQiSC24hq7PU62s/AzLx
         Gw2oLTGNHtSdI5s4lPDuo43UpDb/ltregxeIfXL6rWgFGTPbOdFDghgjDpWMlj/ksrvv
         n9DJlAHWBYLjXJMQq2c87K9q+vewzm2ia7lwdx9XbVD5EeE+VXe0Za8Pc6SX+AhrLGl2
         ffu2YTG5VUGu7sZc7tBuLgwn93MWSmINUaqbz3hafeGDMsYqXy+X7NGE/96faPR6DM0a
         EJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118185; x=1767722985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zxrwpCmrklVLd3dQvhy5lVUwgtJd/h93CSb4e5jlCrA=;
        b=rG56YYfV0TOCVLtq01nHMnUw2JfcQhLBsbjGwlWx8gdS2R6+TVLFox7yV1LXIsoevM
         jpg29bzqwlAztqiD+DWff6hj5oylRev+NGGRroijMa+ydKryO5E0Ti9oBNSskxe15XSR
         rdeizig4FdDEbcSQ/Ffo0S5nRBLY6ruwMP/iMMCJPsRz/RCyr0+YZsUDhul5zZa6v0tr
         Kw8KkP8H4QJon/hahDc7sB2f1euII53hF8QHuYzFDavAYFPhXT106eIiuhXQP+YUZwt0
         W7JfX17g9HUbTMq8dj7oPVGsyOme7TvLRYbjuGwQj3pO04kKogZD3GOYXAFsB5FVY6tY
         OzOg==
X-Forwarded-Encrypted: i=1; AJvYcCVrrUx2o4338MGOhqRQauY0LYyVXFM8oyr7tjPEs8xwvp7Uc4a5GQkahhUzLgMs6ERNtxOjGLCpa4At@vger.kernel.org
X-Gm-Message-State: AOJu0YxpalBq7UdVYG/esM9dHj4ZukUtL3Uv7M233MiqTW6nUJseLysU
	yGGl9CWnfjhAHD0uUUOCbC+aSYIsqNse7rG62vxthV+pc4HBbu5ga8uRAYqHhQ3bDI8q0k0m4OD
	jAUvDf5gwPF2koZGp3MLAdut9CHLE4rtS+hq/iDq7D0xcQh1qQ7o74AUlE+SKydAn
X-Gm-Gg: AY/fxX71xBFz1S/2gpTvMGIMSIQOd0R3DJeE6YGYsONLbKxofg4ZKGPNZUZFtFvBZEI
	TAB0cSvqpf2iPGVfzajWu/p7iiq9suf6nvLGlmcLh4aZtTBfz8vla1W9nuHKMygVRbCqsdFAFwj
	MAvVQAQnIppmhW8AuaXl0ebDBIGjS5/gQAS2wLyyEt2aI+vD3E3ExU0N5GJr43zvTa+0ZfnL+Ov
	aO7VWLbNiave+utzdhu7LVlbbk8QZe/YBYLQ3MW2esZGovHSvq6eVNQ/ruov36UEKz26RtdZQGw
	Uvl10susayvP97Uko4RU4hfBXBECX97qv6JCXdKbFA5PaMaouJF2E3nTNgj1ZiVPhXqfq6TAjcA
	QMSEWDcZk+R0Tk8cvOqe6adotuk/P3Pa/g4D3SEQAMgWYahfkmRZWtJSny+PKVhSBoSsN1NbwNU
	p/3zwxkkA4T9aP22/RoVt0ikM=
X-Received: by 2002:a05:622a:5916:b0:4ee:43e1:e591 with SMTP id d75a77b69052e-4f4abd939e4mr466238811cf.58.1767118185030;
        Tue, 30 Dec 2025 10:09:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeXCP+TMD7l4jEeTo5UrB+NryoWkj/z31BYNSG5ir92U/bAlxqI4Nt4wzjzofiPgyNK0hgag==
X-Received: by 2002:a05:622a:5916:b0:4ee:43e1:e591 with SMTP id d75a77b69052e-4f4abd939e4mr466238471cf.58.1767118184633;
        Tue, 30 Dec 2025 10:09:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1862840asm10427036e87.96.2025.12.30.10.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:09:44 -0800 (PST)
Date: Tue, 30 Dec 2025 20:09:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: hamoa: Extend the gcc input clock
 list
Message-ID: <73dxvqekezl5oo3wnlhsr6ok4usnoabfp7p3uodkkusiql45b4@tmwx22gcfugd>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
 <20251230-ufs_symbol_clk-v1-3-47d46b24c087@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230-ufs_symbol_clk-v1-3-47d46b24c087@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE2MyBTYWx0ZWRfX54I8NYVbbqpu
 6+tH7wK1VqgwRdN2CLOA6E0wFj1OfyuOIIXoWgOeF/kbyJ7SI1B5HuPqFZDbIJ+HE2F5o8b1f7l
 w4pPLAcC28darVzoSQ579ferPp7a3vr3EjzEEZ30dJDTvNnFeFZVWmI9UJrRM76RuTKC8xVWuFC
 9fPxjCQTV0mckHKfGWdadwi9ocVkS7Xrq3TzhPRNvcFua3n7At0U/4nrC7JZrrcExXMGanuRJLg
 WwlfJL5ZBWBTcRAkfVLuo39r9RnjLY4hLGYoh5uTKVGSFU1JWF2y0aX6vCyOLTiPV6BdFS4tQ5Q
 X/RvU3gXESiXcvlcyNUuOqCHMKwzk+qaJqcd8G/WqKWP1cm4BjaJ/TFG/DXxvtsP8+o7XssIkPX
 RBfMFh0HFcS+Se98mBnj/ZBmsTvd/FGY/AmkLZ/95xXqqUuk+B/WMt4jzd6ZBe2Hyd4jlGs5tPG
 /kevkprV63iJzqRJw5g==
X-Proofpoint-ORIG-GUID: vx_FJ5LvvkD-FWAZyDW0gUwQG6TNH9Gr
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=69541569 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=q0JkR4NhiA7wQx93E64A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: vx_FJ5LvvkD-FWAZyDW0gUwQG6TNH9Gr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300163

On Tue, Dec 30, 2025 at 11:08:36PM +0530, Taniya Das wrote:
> The recent dt-bindings were updated for the missing RX/TX symbol clocks
> for UFS.
> 
> Extend the existing list to make sure the DT contains the expected
> amount of 'clocks' entries.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

