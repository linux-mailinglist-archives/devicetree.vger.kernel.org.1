Return-Path: <devicetree+bounces-160903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A456DA718A8
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 15:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05D2F1891DC9
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 14:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915B91F12EB;
	Wed, 26 Mar 2025 14:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NoGaHWXD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DB61EE01B
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742999669; cv=none; b=rjbgef9AIUj0Tg3ajP6yF4IGf+rfpl3GpFpiqs2al44Si4eurMeyLH0AmMQ+kuMdZKrwQbd44uxe5ZeOuUG/3zzHIoeTmvpIHCbQdNDOZgrNYNpcnH5M/jcg1hjx5BHkUFo9ipsFS6MSszi8Rf91y5kWE5v3c+N79nofuhCQqPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742999669; c=relaxed/simple;
	bh=bGdSlf9iC5TjW33KKOqByec7ahm5IZSgwgZbmR3p2Es=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gFeyUcDlm2H4Z8EbOAmXL7sQg3Ala5qiPXrMAUtbjzKiYThXa6N5dkLhWmAEvDhdQiQ5PfZydixhSjXZvtOCJ3/O6SDjCP7sKC+LE41F4mbzb/0MchU8sJ+SD73oSLQswVOduYlykGRLxN/lQej/0cBNVjOrlP6Ux9hHlz+TEVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NoGaHWXD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52Q73W9P000961
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RY0WQaB9X6ZreP0NVetrV9wA
	t2tqT58NwwimdxdQF20=; b=NoGaHWXDU+LVn7AtakWhD0dYjqhRxg19LcJnyWot
	M/3wJQ88MXpKvUmtVT0OZ7pDfosQbmfvVDvA2VlMiKKAUgk8p03yDTe633zFmNyw
	gnKRUaH4ngrb+70yFCr5ihb5jJKMuE/c7jZ6Z7J2CSFA+vtWRhNynmx3Ah5F3yld
	HbIar1xIAdoM1xcaqNhtdKV4b8IBmlTqByep1i3f5uQogALygQmMpu6eNteXZQKr
	s5LwbUUEbgCDtTNbmOgGqEn17IuH2ORrZ5cksGaiOLfkTfLfHKnOXGGKR9Wb4skG
	spaqFv87QtX/1bB49QeRtKJNOTDOdov98QopXiTB75gBnA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kypsb3md-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:34:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0c1025adbso157205785a.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 07:34:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742999666; x=1743604466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RY0WQaB9X6ZreP0NVetrV9wAt2tqT58NwwimdxdQF20=;
        b=WCqWB9Vi14aTmnTAwMum8iSU6RlzbL7rIZvP1XcVVD7qnEu6gk/LCRtnQ62zbgEazG
         K3dhySPDAvKXxQNHcr78gyiEeBkbc2XCV6EYlcnJLrspUyAiM+9j3VQcV/Y1DDD9NoNc
         NzQ3KzxXMyiZR5Ql3HH+cTvChdMGR4NKQjIH6Utx9vr50tSgQOfn7wd6cd0kUfdZgWGl
         L0yozmkZMbcRUQITsm4sexusfFqMrTOR5MTPprK3Nd4dGzt3thspJYrLPhQMFtt59ZmF
         5GXGgx+yfy/h8WtP+HjBfalJHYSgUEXMfaa7WVwJNqtxqJYAea4wcxSef44l06g7idUo
         FarA==
X-Forwarded-Encrypted: i=1; AJvYcCVSGc1I+kHLxmfM2+yj8jjamoqar85avhT1hiTpSzVdk983cxUNsmv6XejpzgwRosNHqC6YZo1gZlBs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7mkt6BtE/zsGo6Y1IGvNcaoKWAhChe0Ar+P2mk8cQGp6I0y43
	jGXwqUVaI7mmgmane/NA3fzNEi9fxDrZRXwco/OVnx6vLLkkNSKE2uNczpOATul8wpnZVTyyMum
	VxG4JhUXXO4M3EZdgS64ozHEPxDV+XflwvBUVQIaa5CcApDt//kTxj5r9NyPX
X-Gm-Gg: ASbGnct013Oe208BxfC2UyqCozBZvNpj4Y64svcVRJjtTFNh7XLr751cbbEdWihp7jn
	dQVlD+v6Qw73UaVcRR8x0K3J0wCu2OlaW2riglcoF61h/CO95eHQXRC3+OXA0So6z8YlNuuIvjl
	6IZu/vFCd9dJUgL5Q/T9Or70R5AoL9EMJUskF+f86LcR1kTTsn19MoHM1qy1T5IinBiObX8hKBW
	ghCeGGtj1fUR+RtBOQhH/1NvxJ675lawhS7Y0exUECr1hJ98TreyHS2mjxi9Nk/p+1bYWJtSQMe
	sCundxYJGyD4pJ9xSaG72ye3m+qtNhxEZPcLSum0DDkn3CoD2B18YgchWrHT0c2goMF7VigRhUe
	t80M=
X-Received: by 2002:a05:620a:4588:b0:7c5:4d22:2149 with SMTP id af79cd13be357-7c5ba18febamr3269040385a.30.1742999665713;
        Wed, 26 Mar 2025 07:34:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECnr4KG/OEqDIRPkCO6WNP3n/KkReiXPV8GoopXIeN6jC6CBHU7czD9VyoO4qTAXKU2p3ZKg==
X-Received: by 2002:a05:620a:4588:b0:7c5:4d22:2149 with SMTP id af79cd13be357-7c5ba18febamr3269034685a.30.1742999665204;
        Wed, 26 Mar 2025 07:34:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6508252sm1818881e87.179.2025.03.26.07.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 07:34:24 -0700 (PDT)
Date: Wed, 26 Mar 2025 16:34:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 10/10] arm64: defconfig: Add M31 eUSB2 PHY config for
 SM8750
Message-ID: <bsbv6isa4dprmirm66keduxdshm4h5spl4q5xptcuduo6jyux7@35axuo7mze5b>
References: <20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com>
 <20250324-sm8750_usb_master-v3-10-13e096dc88fd@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324-sm8750_usb_master-v3-10-13e096dc88fd@quicinc.com>
X-Proofpoint-ORIG-GUID: 9QWe8qyhbhZaLnw3cGV-yL4Fj5bPvDm6
X-Authority-Analysis: v=2.4 cv=fIA53Yae c=1 sm=1 tr=0 ts=67e41073 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=xq4t1jtuFps5bkffva0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9QWe8qyhbhZaLnw3cGV-yL4Fj5bPvDm6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_07,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 mlxlogscore=463 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260088

On Mon, Mar 24, 2025 at 01:18:38PM -0700, Melody Olvera wrote:
> The SM8750 SoCs use an eUSB2 PHY driver different from the
> already existing M31 USB driver because it requires a connection
> to an eUSB2 repeater. Thus, for USB to probe and work properly on
> SM8750, enable the additional driver.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

