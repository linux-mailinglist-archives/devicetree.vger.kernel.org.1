Return-Path: <devicetree+bounces-165115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE46A83729
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 05:22:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AA781B6291F
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54201F099C;
	Thu, 10 Apr 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Haax56Ep"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BA91EF0AA
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744255313; cv=none; b=bSJGXh9Xj1ktqOU4Kst6+91xymYVBFlvwPnx/hrQOjbSYJkRjmu7jiyCl3S6A0wBlKSCVQTQp8Z6pRdhceuN5NkT199DiFTwvI5Kg8xUl7uvkteik+jVhRmaHqgfZgvFM2eqeA2vf6tHGbp9De/YSYSehbbyA7BG/PLLPHcky5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744255313; c=relaxed/simple;
	bh=cqgG21zRk8VNKBxL2wmyw7+NAbVkESWSkpXKgp7RZDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qKQU0YWGf7etj8enDI6dFywQh6fS5bVQ3SyfAWZGAwehRIl1qgyM9PI2PPKtAGRhPKve6xBDmK7EtV61LtHhhSX3louPpohDgpTpyr+di/G2WtduMBaMmeGq+SLO+qycbK7z1AhJSr2bn5xrVdiRIVsGQXM1nc4XSYiUkk1aB7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Haax56Ep; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HG0nD015017
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:21:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BM6/NjkfUI/1vA52IvXfXFtW
	Pqd6Fba8LY2OaYR/Rto=; b=Haax56Epy5hm1YbDbfEKLQDm3mqExVRkZE6GyJcd
	q/TO79XMedlAbmsd+6FPXwVqdHusbWJN2N/xaQNMPwj019tqFrBRTLuCXNFHb/Yk
	iGW8buMSyBfh7arI9p5RWr6p2vhuKbfY2POgyAZvgDy2upy7FfjQpvcVSiufVrY6
	PZwPiJLa0JyyxdxEyuhXD6oBI8d9jpKfSL5DVEqDOFXXMO2yxIVWoGSqSAbkjldk
	1e7Qx8pDXc1ulYo9aojMhDj6nsmQckfh+44ZBgdPdqK0ajwhP6w8sSVD49FUozqD
	eeYmGLtJFYdzhiQq6K1H3+Tm6m/UKSQP/LvjVSiLN72S6g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbunfw9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:21:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6ed16cc6e39so5337436d6.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 20:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744255309; x=1744860109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BM6/NjkfUI/1vA52IvXfXFtWPqd6Fba8LY2OaYR/Rto=;
        b=DYYGxq1XfpBbifGu7QCcB0Q8Bld8okPpL+KNssV6NYyD1yputChVFXnnh7m/Xr0NLX
         4T7uPCSyLDkEcGQe/O5uRHWYnKQASoo0BWYZZ5PGVBAVP00YyoTEN2W3/wGdZ0FoNQyK
         V+2j5x0raOYbk0K0ceLWPjNOLAOTUiSat5Y2kz3Xfld4coI7+qbk4N5rKcHWtBnMAnKU
         9CZg2N3sOrQdTtIR555+wyblpx5c9g2yjeztJTFZXkR21/9muqY9FKqjTM6mWkoE81yU
         bZ4rzE3aal/wwRDV3cJeIHucoA8oiHuwF6zK/o7mF3rQI6XLyO0KSaMwN7SJtcsuBHAS
         bD+g==
X-Forwarded-Encrypted: i=1; AJvYcCVOiPc6XWftfLFOH3t8MDEQ2nFHQyo7Xg90kdC5h92VD7cI8+6V4QyWRM7ZGJEdaBbG0OOMCVWS8rXf@vger.kernel.org
X-Gm-Message-State: AOJu0YxgO/NWoilXfGM/AHdvOaPDxs3EsP+IQhWA+WlrXzxNl1xjLDhl
	XPAshq5FOnpgyKpkSMsOFFRR3QrkrvJuYLqibrlSPwW4Of3Z2Yk4Io6wGdbBliku/WHrRehZ664
	hoxeuJzb65QvyBRfGIM0+xGd+ha6CNYo58Lw73gpNNwE+6BRvC8aihTu5yz8svx77PHf7
X-Gm-Gg: ASbGncsDUVujVbKF/6fi0R762T6yP6uMJ2VUItIqHNhCkZQ26ZqffdOzd44Yi1jHLXR
	OVOApPAmHSQhrXEQFBh+BR30snodhDXuTBvOlny84da9u6AdLiOOlNtuEwYUltSw4P4BD9vnrOi
	a8d8uahQZdJiJbayqHTiZP7SeinGZT2P4ul6HnT1MUzI5P+z2bm3rL/z8T2ULTVywaAeJ49kobZ
	c2qlArU2hp2+VS3BnFx8ikwr8WoVBRsDItxazcrMpqRU+StqfspE2BwxVjhm2HmXWykKXf9GcUv
	YnAP7U6gvDqjXoysuo/a3L/lz4v3vd5ZAErlFHneasV+D38Iv97b9YjeOvfQyTF20ROE9hXdZvI
	=
X-Received: by 2002:a05:6214:2687:b0:6e8:f0fc:d6c4 with SMTP id 6a1803df08f44-6f0e75fc07emr6848826d6.6.1744255309689;
        Wed, 09 Apr 2025 20:21:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYIqjaenrrYWCNqFjWK4JuegWJuudSnIunDlsPqtfRTCxjlrwo2zihuMXwTVE6JJddNv1Etg==
X-Received: by 2002:a05:6214:2687:b0:6e8:f0fc:d6c4 with SMTP id 6a1803df08f44-6f0e75fc07emr6848576d6.6.1744255309329;
        Wed, 09 Apr 2025 20:21:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d23casm3432091fa.79.2025.04.09.20.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:21:48 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:21:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
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
Subject: Re: [PATCH v4 04/10] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
Message-ID: <o3ixtpmvueravt7uwpp7cu7fmucia5lonor2jmfepee5bramhp@uhnxvywjqvz3>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-4-6ec621c98be6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409-sm8750_usb_master-v4-4-6ec621c98be6@oss.qualcomm.com>
X-Proofpoint-GUID: _eeV3sbvwKl5aey3-swrSsYMQfX0aiNh
X-Proofpoint-ORIG-GUID: _eeV3sbvwKl5aey3-swrSsYMQfX0aiNh
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f7394f cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=dtmsXWtYh8RDwc6_VsYA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=909 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100023

On Wed, Apr 09, 2025 at 10:48:15AM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add new register offsets and PHY values for SM8750. Some of the previous
> definitions can be leveraged from older PHY versions as offsets within
> registers have not changed. This also updates the PHY sequence that is
> recommended after running hardware characterization.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 223 ++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  6 files changed, 429 insertions(+), 1 deletion(-)

> @@ -1739,7 +1895,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>  
>  /* list of clocks required by phy */
>  static const char * const qmp_combo_phy_clk_l[] = {
> -	"aux", "cfg_ahb", "ref", "com_aux",
> +	"aux", "cfg_ahb", "ref", "com_aux", "refclk_src",

This clock isn't described in bindings and isn't used in the DT.

>  };
>  
>  /* list of resets */

-- 
With best wishes
Dmitry

