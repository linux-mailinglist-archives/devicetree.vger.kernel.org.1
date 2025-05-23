Return-Path: <devicetree+bounces-180073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15256AC28B4
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 800721BA613B
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5187629711E;
	Fri, 23 May 2025 17:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gbvQhJ5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62692951D9
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021637; cv=none; b=Vp29qcSxJ/2Ek0gndKcu5hJs8NoKv7nL/Fqo1ih2slFxTzxvaBRSlYZIO/LEsoYPACEeB7OJvgPetki4dOmQPN4XPIdzUCaKcGxG/ANh6GT0VqhO04o2m9r36WTYSKmJ02lx/54a4a6oJfzb22j2NdyvMCiKMtp2tK4f3nVNQLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021637; c=relaxed/simple;
	bh=2RlVhozH5dawX/I+r5zIRSPNYv7UDsuUM6ArHl/PNOY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ek+jmlAVQDsES4CyZBS/mp+xyI04h1sD2ih4v3pto8S9Hx5YZKCtSmJt1Jd+vcBIXHrmzwuOprUDciUtoZgDNLVYzRGYUjxvtHyf6MHtFVGDQCQCRekBlx11TLJqHpcgPJdkt7RCun2Z0SJ1oad9iJrjaTTGuprcWdqyQxmmsRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gbvQhJ5M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NHOErN029481
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:33:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kiSRIkgOu3g9AgMrN3TaM7xC
	3THECdyyCZ7VxqqOb+g=; b=gbvQhJ5MAAhFS9CRHs3cyX0xUmURParltkHnk8AK
	GW7ibCyHcsWp115P5/xaQUZ917iFQlEWwSoBMKNNAxwgFoAIbG8gULJ4WvnF85rd
	MAG6MZRoXH1JS6XH9qdPBEr5NJlFoBFGHcBBqWrOXOxbqQpwYWEC6f1RMQvHeudq
	bVpKOoRvhDbZ3GX8s1Mdewn6wtvy7iX+Too7XombGg3bBDKE0QkIB9blGZmayGXy
	ds7VUWjViYXE+5z4kWjiraXHS1PJn7dbzsJc8ikayw6I4hVGMlHLBtyD2lDWUa3f
	t4d99VQN78NTQcx/TnMsmMehyGcwmWi0NVI4ww8KOqksVA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf4av0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:33:54 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8d47383f3so1372076d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:33:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021633; x=1748626433;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kiSRIkgOu3g9AgMrN3TaM7xC3THECdyyCZ7VxqqOb+g=;
        b=G/wRjzFP8rvkMB1OXk5Mumo7WptKBjCe11r6yZ6knTWD1esmaTEcOcYn3d8/ofeqax
         OinNtlpfJeQ7+cQNPosKomyF/Sp1plmck3/YWGdxXA6V4OtVduPejFUUu5jecBx0NkyC
         t8WOjdlbOAp2CjI6lIZwOZIF4/d/uBqsZF/1HQ+96qJcao13QBC/Uo8+pSRmLEK+rNDX
         2hJCMPETov51D8wy22NYsdHJYIQ91l2rZDl76Q+/LQGmECi5vJrdhQiI0K18whlupsSP
         2cjbgNExsMFY+t09XoRzlXo+Y56CCDWh5gfWGcBAQ9PKpMNTHnXP3Dp0oMphu7X20q7H
         xzfA==
X-Forwarded-Encrypted: i=1; AJvYcCVaoGa3/xXzIcxCE4x4AxVFo9js3g5FtiGKOAb43uZEvSYyhPN+O1UXS8cyxQyE0/+gppN91tkzIg3i@vger.kernel.org
X-Gm-Message-State: AOJu0YxhwfJn6J3LHcZHZ0RIQ6tj+vyKJzT/yEB+r0dcrGbfMCr1KF4n
	i6RoHkyA+cYdghKz1ikCafPOHeqib9xsJn7EY9C6XEbXZbtQ9nwoeEusErqNe+4mmSiE07TKBJ/
	5hRLLu/OHmTx2OjSdOoszuWCF/t39GcSBdRHiSsqk87s/OcSNBhpAmS2xehyORM3V
X-Gm-Gg: ASbGncvHUOoDywOTvY/zFx8A/Pg6bw+HLoK0O5ogBkDdkyFQ4sLw/lF9kcMOjSSuSFu
	7jdXoZVOmPJ2j40moCRw2QC2H+0PhhfBIPgMdLkQ7hzx9KEFNtQBAqMcAAuo67lUVjSaauTayP5
	jEjjhJHtHKTvkRdTxPUFVX5BQXSAn27eDGdVSofAIimpLEDYicBHtdw1NsgRUfswt+ttMKKd8L4
	RWrTFVaR+o9rLPhITROeMCJ875SM7r7FdUvacT372QtRGHj8kJHg0aYMBsQkDmFG98I7NdtKMdH
	QItKH089Z/NvsVVPgCg/jugemYuvrQgGunzNKTlins6+HoO48EtD7JkkNx9WuakFwdzM+JGUA90
	=
X-Received: by 2002:a05:6214:f68:b0:6e6:61f1:458a with SMTP id 6a1803df08f44-6fa9d0165b5mr4778356d6.14.1748021633580;
        Fri, 23 May 2025 10:33:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxh1sSV6c7A/2F1u+LXZKB8FKA56Qvmh0fYeMayA+t8rfgshkjB6FLyJjY1gq1eY4aWuJmwg==
X-Received: by 2002:a05:6214:f68:b0:6e6:61f1:458a with SMTP id 6a1803df08f44-6fa9d0165b5mr4778056d6.14.1748021633068;
        Fri, 23 May 2025 10:33:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e703f864sm3925122e87.250.2025.05.23.10.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:33:52 -0700 (PDT)
Date: Fri, 23 May 2025 20:33:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 05/10] arm64: dts: qcom: sc7280: Explicitly describe the
 IPA IMEM slice
Message-ID: <k7ananxlhqln3f2cjetesjx5kbwkqka5ikbwzvvwpx2y42ave7@35imbrz55ok7>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-5-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-5-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MSBTYWx0ZWRfXz4Zr0h7uFYZx
 W75HjmxBXv+3Y2aDCgiX+hnQZ3AUaARol4K7XmEVMDzSU8SXCmyGxW3q0DJGwHOUY/nDxWFPEnd
 zmMMXO2NzaCntLEipbnYcwiFgDh3VCuKyxpQWUXNoJeJ2GAzig4m72HHCe5HeRF5BgaELbjva6d
 GBp/BGArdO1fFUyXBdiykyGHqncsA6PPdF0PTZ6Cqgrpw2DzmlD6neSXMYjNYd1h9Hn2GRCcn7V
 xWCQEeumXqQqiQ3kpf96xouatX7aNxs3zRSU0vT2yUMdNBV2DihmfBM5Sz1oQhdEwjoPowcj/2Q
 4T6aI9KRe6cOyIPcKUa+sorhlR2uov3GbNwUwNuvNl4EV62wGCIi2zkD3tagBmz43zk1/CQmgcK
 /PyHbeCOAQqCOevYSwccOL3Q9Pve5r+AC3Qy2P9VRC4g4wfjNtgjlEPBKIocmON1toFILTtn
X-Proofpoint-GUID: ViG8kVdOWhM_XnrZ5bxlnJfEZlfT_ZEd
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=6830b182 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=bJ3CpmIcVIv4Nmd2ic4A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: ViG8kVdOWhM_XnrZ5bxlnJfEZlfT_ZEd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=680 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230161

On Fri, May 23, 2025 at 01:18:20AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
-- 
With best wishes
Dmitry

