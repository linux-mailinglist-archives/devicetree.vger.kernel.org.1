Return-Path: <devicetree+bounces-160970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACE0A71BE2
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63D27189F095
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 16:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA2DB1F7075;
	Wed, 26 Mar 2025 16:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QEkpbNGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECBB1F4289
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743006260; cv=none; b=Rr/hvB5UDuiqgiiDI+POOs3f/obXQCPzqtc9J6JxE1fZtyWRNfwLrIixGkGRreE8oka93gpLMjns5QHT1e5FGnPqFvifA0ciCeKdWUwKNwnrRb0EU4g7Dzrb5sX+CraN35i1/mzQMfcbhu07yzQKtcns2NUlwApGquaVKlPBxxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743006260; c=relaxed/simple;
	bh=oZtJTe+Jtze6r/AtQgI7svOWxoBDIpn1QFZpYX+2F8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UASpD909dis+kaNAhwMYQAoigMT/XDrXy3QFKpnsld0wMz15/smZ7u1ugIFnmr+MZBUBVYNOZ2qDl6Zv/AQxzuWvIaFbD6zM/FYH6LIoJrks47ZCSA2cNjhdDUQOXTO9DM+i00D70nV60gL5BAFwnoqKDLCSBWPEEEHXG1dAQ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QEkpbNGp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QEjxwH024572
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yhQYzgwtR00epObwgs2DNdBy
	0sj30tE1iBd3j+fulDo=; b=QEkpbNGpDe4XxznZGpzE8ZbnHcw8nEVwR/RnWto8
	/X2A2ckt68nuaxtBcZCyZi47BLjRylTdJDZF9gSBJF/MAblYOsv49gIbIMGTTql8
	9uMTrpzQuu/k8jF5Xj8Hh7BRfYhZK3dGWPXqXWyZnGTV6QNP8609IyQurDedCme2
	UW2jSlGbmTEVX6CTGtwCSYe+zSGC86DbNwizCcwyEAr5hGYHcb/4klTIDQjzXFxW
	pUCRVrS04RmUdFg40U92GBA1Qibbl1po7LDUJQWjbcyTojl2SQILAZP3LUaFGx+2
	k5U809H1k8AfYgaBGyyCZgdo2dnBxgq2QOoJHcMPb1A9qQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd35k91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:24:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e2a31f75so14845585a.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:24:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006257; x=1743611057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhQYzgwtR00epObwgs2DNdBy0sj30tE1iBd3j+fulDo=;
        b=jf6DDqwN+pcyD9UBKAWJbC5sZdgXmDox+C3//eCjWII4QDUaAk+XAiC+GF+quRqVGl
         SkcPDaEY1TS56FwunuKOsrDGmNZVp4xjVC/5DV9BANdI9Pia4dAGZTjZ0trWqKcbBHYp
         5pGwg83Xcf6hLjC3Nx2YTZbUByZ2wzJ/73WuaGLulmbzMSUp08k4LvW5GSZIiwbQnuav
         x//fF7agOJ4/dzxvZPk3aot2bYgBVbfTXZmKmfekmAGSXbXkLvR8SksWoV+0JHbgsGmG
         LL8S1JpFs1mCKVUIR0cFV6VCaeN9emX0rrLlOsiVkEAoSJLNokAVmWGpsqvQmnbGdjSI
         n8bQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrofkbnv9GXKav137UW3YolbQyHvS/elZZAYLxdG+ZeuYyvpvGDcMIl6Lf+8MiOy7g9tmO2ZHpQYBP@vger.kernel.org
X-Gm-Message-State: AOJu0YwcObP3G1yNW+4w465GEvgB24YOrD7bNd/jS+V2+Wyno2ZDbhEh
	JmaDLzMFSK+suC2SvcuqRkSnJ6AYW/uSbN0g7DJVimJWgDixX15Mp+en4Da0W6j50H/bB721rpm
	Ahk4RCFe8psWiOVvaWDTNPfUJha/SJoDvhk2nH0Yuob5EoNGEaHS+884VdAE/
X-Gm-Gg: ASbGncv8Crjp7Wb+fbfjJykUXFRaKkNNACXJoJPXeK17RlqhMTGIKAXCku1SwaD1jDh
	AZt9u34lVuGxafXpo4S6kWznrmNVV3sSOt4GOV7j8zIPR0PqDm9aVhGSe+9bV0G/U3YRDPraEeq
	x43DQSI1FptGOhwo4zjq7XARUw/ExEHKlUSUKWrmMGu66jAemTepGhDFJArtX0s87XV9f7g3SVx
	EO1slIxeSM76FaAfqa2ikaCqKUc61GVU5vWzO/tUC9Nhw9vIMQeal9p0WpRaYxJSpVT1ggLK4Lq
	utZ4SNPSE5fGay/U2Puctx5+qTGnrJYiH7t+Ck1o+kYUG38lLm9qfGkfXmuZ+h0g44GvKuTL4Uu
	vlHg=
X-Received: by 2002:a05:620a:4256:b0:7c5:994a:7f62 with SMTP id af79cd13be357-7c5eda64767mr48479485a.41.1743006256653;
        Wed, 26 Mar 2025 09:24:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgncIKgJwh057F7F+azHQ8C62XAJ5G0SimDj0y23CHuroC0rH8G4xWqHGwZWbdX9ZUK2Ir/A==
X-Received: by 2002:a05:620a:4256:b0:7c5:994a:7f62 with SMTP id af79cd13be357-7c5eda64767mr48474585a.41.1743006256181;
        Wed, 26 Mar 2025 09:24:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad65082d8sm1882436e87.189.2025.03.26.09.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:24:14 -0700 (PDT)
Date: Wed, 26 Mar 2025 18:24:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_jiaymao@quicinc.com, quic_shuaz@quicinc.com,
        quic_zijuhu@quicinc.com, quic_mohamull@quicinc.com
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: qcs8300-ride: enable BT on
 qcs8300-ride
Message-ID: <kqitrnxonh5sv7gqw3vfdefanmr4wrsoerd2il7enxqw55uskp@eqqnawyfkc4p>
References: <20250211104421.1172892-1-quic_chejiang@quicinc.com>
 <20250211104421.1172892-2-quic_chejiang@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250211104421.1172892-2-quic_chejiang@quicinc.com>
X-Proofpoint-GUID: QjDWr2sT2tMSK9ill7BK7dynRBsMMc57
X-Proofpoint-ORIG-GUID: QjDWr2sT2tMSK9ill7BK7dynRBsMMc57
X-Authority-Analysis: v=2.4 cv=P646hjAu c=1 sm=1 tr=0 ts=67e42a32 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=ZFGkPW_SGG9sNUVis-cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 phishscore=0 mlxlogscore=846 priorityscore=1501 bulkscore=0
 mlxscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260100

On Tue, Feb 11, 2025 at 06:44:21PM +0800, Cheng Jiang wrote:
> Enable BT on qcs8300-ride by adding a node for the BT module. Since the
> platform uses the QCA6698 Bluetooth chip. While the QCA6698 shares th
> same IP core as the WCN6855, it has different RF components and RAM sizes,
> requiring new firmware files. Use the firmware-name property to specify
> the NVM and rampatch firmware to load.
> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 24 +++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Just so that it doesn't get lost. It should be rebased on top of WiFi patchset ([1])

[1] https://lore.kernel.org/linux-arm-msm/20250325075331.1662306-1-quic_stonez@quicinc.com/

-- 
With best wishes
Dmitry

