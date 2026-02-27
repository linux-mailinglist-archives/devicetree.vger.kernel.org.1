Return-Path: <devicetree+bounces-269422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAFgD3L+oWl4yAQAu9opvQ
	(envelope-from <devicetree+bounces-269422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:28:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4931BDA07
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68E29303589C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9E7C46AEF7;
	Fri, 27 Feb 2026 20:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nK2X3KtX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UwNXmDUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7DD38B7C1
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772224110; cv=none; b=UFBeMc7Hy6yJgKYQ9xtjftWG+5HI78QLrLZW8lRjapXRns+wWwrT0/SGxwuDAqcYo4it1vnQ3+taWZbejCwwBzPl98y7ES6A4zL0dQRG7gkETIz6yt/HiU1hXVysuUYpTET7HSGcj68w+TtKEr6SudoWfgQtrCh9AnWhoZOOW3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772224110; c=relaxed/simple;
	bh=ubRpnnZCa3BtxGeTQH8/24NroyvQw+/jfEMurUW7GwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bgxqdm+1WRnTLp66P90Dbag4aUHyR9LRo8r1ekUyps0vqAhjnbfAgCfMRAie6oPSbQfDG+lXm6gNGWcJoMn1QlTpfNsKd5m1howiv0dWSfm25LfN8FZsVN+497BqyyZtxxKHvSRxEHdyrqj1V9n5ER4SU1PTKpqxuis58XGs/FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nK2X3KtX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UwNXmDUj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RIeqrY373543
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:28:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lXz8uYqb+tpPwbAm+qmdqDbm
	VqPyxZKSrLTUZphOd/U=; b=nK2X3KtXtku82Y76wPMRZmUpj+8CT6L0uOmOgU3E
	L2BNQubsByoq8ptEwCyi5yH/pBdKpE3uCef79vOGcWJUbE0pDE0Q8/KxclSTQOgE
	vGm3V3CtiS3FodsjQ99+0YzzLBA2jZxABdWsJzIEAhOIGbfw7njRxnKhSY1W0Ib3
	AgNdgQApkYjlETglgOr2ZF9PBCRm3zKPPw4VO7V4EXffwXJdoZZ6XkKRVzIDnwep
	pglHMArpoTuAHbxb5x4uKbNlOBK9jR9kiIiM64RY1VoQI2TalU3hZ7EbRDW8yD1h
	ur0ZFOjaN1pimiJUixUXyJv5DYfLuJUN9PiXYsj9RV7tXQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckgrtra6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:28:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4b8e9112so202796985a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772224108; x=1772828908; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lXz8uYqb+tpPwbAm+qmdqDbmVqPyxZKSrLTUZphOd/U=;
        b=UwNXmDUjsvA8SxvLFCUTJzimGt0XpUQBEs5QW9TrTKFPuZ/O37xAotqLL6nr2Svd9k
         TsmAjP6SBxa2k8nRk/05w/4r5agzBaL/sZpDBjEGpXVfUwsRZ8rZfkpxY6inoSblk+Uf
         aVLtBymZuDKFAZR3jiaisSDwNF4c4uLom/g7Spaz0kHO+ccSvA7P/eP2I4yYAtykBCMP
         G1BBHXYYmeIFRar1JR3HlgLdJQ9id6nCgZDvooZ9sqlMcvxDEalAe7aCUJTF3+2DZyIK
         NN432ssfmRcmR432dOPV5qQeaO9K38BZurLYTmG4khcRnGAC1FkEBHI/+lfzwgz2usCk
         PvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772224108; x=1772828908;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lXz8uYqb+tpPwbAm+qmdqDbmVqPyxZKSrLTUZphOd/U=;
        b=pluCC9BcXwAfL1ti0hS22MhR505lyo3I2tbJwAIlG6tXjg7zQoP9RJkF2c+IElxcG0
         3+GsDtWNpA/Hjko7lErr9JOW17965pQoSpATqeRrrC4RLmClsJBINOM+lPHCgp4Syd9D
         3hnDXuC94bmL6YMkv4rex3codGQC9r3xqQf13jwn1ckut2vtkyK5ApGckVZV3Vhv5SOZ
         aYzg3lCNchvgNGvS2jt4FpmCFGlCx5kBBOAW6I130cFYjwo6FMDgY+tmzhJg57KmbFhB
         QxM1Xk18GlwnZFIqqNWajUHsLkgdO0yGdmjpCDOWZkho5EOVfhNi9RjK9WXi9EVEG6uX
         eulQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPOvOm6iDcnMbcGV7DO8Vqt6HZeJfwItG3bZzi+p1H1K0Rj1gM2ZZPk8SwLkOXoI1RG3TDCGrK9Ihh@vger.kernel.org
X-Gm-Message-State: AOJu0YyNqTxMo/XgSLZd4m4NOcse/D4BHj6Kt7SEQMUl9oimOmWBkRcF
	efH85Z9wQ7AN4Le+gD3Woy8oOybs5kICT8fr7YPBs2w0NpVIW6JcFuj5gJmdcVF8Fe2ahpEW4JR
	Vsh6ppk15kK+kiJYK8XtFXgGKg2lqQ0AvI5ncMeNmcCEdyjKU0xrtIBL/95YC9QEi
X-Gm-Gg: ATEYQzwmoc7+LyNKYCWPaTxvT/M28aWoO83pRt6TthAtJJxUc2h+efaNHf20cXs1R4j
	cBTp+nsp+aza3nLt/yOAjWajMiSfp2J2ItgDRVw9eLcmrgKK3GFDgdoq09q2O13pA46k9P2sL76
	8x/X4XXkRZjBG1kGD2VU9xq2F3+HyFxL0DOnpWB8J8umJwYndz92yZnH/PcIOy6heBIVNSgNDJr
	/YuWs8xypJCIN54JJhz7vduFwHF93E8ZQC4oVm4z0kGa/QsPBS/fh8TB5b4wbXRyLsslBhT3OBp
	AOAvaV+84sDSD35CnJ7y5xqQSE1jhp0bTYaxG9tYZq0Z9E4DIksGigB42kOYjATOhA6cjbTEhGU
	9v7guHGIEAITtzbz7NFIf7kSdhHfVgLvGwjeK5IZYLN8sDojNw4tRDenvCDbXk2crU7vtEk4ePY
	tc51fA+zVVQbwFCGO6Hne80p5jGt95Bd5MuKo=
X-Received: by 2002:a05:620a:4891:b0:8c7:a53:4d17 with SMTP id af79cd13be357-8cbc8e863f5mr527247385a.21.1772224107558;
        Fri, 27 Feb 2026 12:28:27 -0800 (PST)
X-Received: by 2002:a05:620a:4891:b0:8c7:a53:4d17 with SMTP id af79cd13be357-8cbc8e863f5mr527242385a.21.1772224107036;
        Fri, 27 Feb 2026 12:28:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f30179e9sm15051161fa.33.2026.02.27.12.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:28:26 -0800 (PST)
Date: Fri, 27 Feb 2026 22:28:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 6/7] media: iris: add iris4 specific H265 line buffer
 calculation
Message-ID: <cbwz5wtd55enswdi2zvvy3d66nsxlemyzdypheibvljnewmkax@kybx63aveepn>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-6-850043ac3933@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227-kaanapali-iris-v2-6-850043ac3933@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=C8jkCAP+ c=1 sm=1 tr=0 ts=69a1fe6c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=BuJnJetHAO0UpRBxyx0A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Oeja2HyQ5M5N_fTD_ojNqX1z3jLMis3l
X-Proofpoint-ORIG-GUID: Oeja2HyQ5M5N_fTD_ojNqX1z3jLMis3l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3OSBTYWx0ZWRfX2KgsY8bFTf86
 5MZIxjlXoY80PX3yz3krpYM1Gu806dvXTh0RBHQAaE3IOqZTTjfv6Dm/r9IkU4vlu0XaGRUDQb4
 Vgzvs7q67H1ZXdknr46gnmJsK4vp62iD08vL/ILqNcZ5n8HJJ4W+imqqW2cvTlNJqQSGwC2Vrsp
 0oq+R0pPI1QurbLsqwSmRI7Kznhx+KazMexqAIk64TW+bbNi5yFfyZ2CPeovO7O2vlu/rN493XE
 2VTa0BTR+2n1Ce0kK5eeA3YjzldIdcvTjFh4NRUd8BFO8QNQkN9DdcnuChs/nTQTyZFGoey49eF
 NLUFE+CkAnq01w9HTAZzwbobi5uTNiPRpnphFIE81RegkBloyNys/ZG4ZUtpm3bc+OciSTS/y00
 PPsrJGFonwL7rRV8kSGSLc9OeIxta+jI+qlvq5s9LFTQxA9sBTheAU5GzVX5kt74j1qwnajtDRq
 H2RaGnpQLZSM6epDRmQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0 phishscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270179
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269422-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AA4931BDA07
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 07:41:22PM +0530, Vikash Garodia wrote:
> The H265 decoder line buffer size calculation for iris4 (VPU4) was
> previously reusing the iris3 formula. While this works for most
> resolutions, certain configurations require a larger buffer size on
> iris4, causing firmware errors during decode. This resolves firmware
> failures seen with specific test vectors on kaanapali (iris4), and fixes
> the following failing fluster tests
> - PICSIZE_C_Bossen_1
> - WPP_E_ericsson_MAIN_2

This reminds me of the commit fixing SC7280 support. Should SC7280 or
all VPU2.0 platforms also use separate formula?

> 
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu_buffer.c | 51 +++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
> index 9270422c16019ba658ee8813940cb9110ad030a1..a4d599c49ce9052b609b9cedf65f669ba78b5407 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
> @@ -1755,6 +1755,55 @@ static u32 hfi_vpu4x_buffer_line_vp9d(u32 frame_width, u32 frame_height, u32 _yu
>  	return lb_size + dpb_obp_size;
>  }
>  
> +static u32 hfi_vpu4x_buffer_line_h265d(u32 frame_width, u32 frame_height, bool is_opb,
> +				       u32 num_vpp_pipes)
> +{
> +	u32 num_lcu_per_pipe, fe_left_lb, se_left_lb, vsp_left_lb, top_lb, qp_size,
> +	    dpb_obp = 0, lcu_size = 16;
> +
> +	num_lcu_per_pipe = (DIV_ROUND_UP(frame_height, lcu_size) / num_vpp_pipes) +
> +			   (DIV_ROUND_UP(frame_height, lcu_size) % num_vpp_pipes);
> +
> +	fe_left_lb = ALIGN((DMA_ALIGNMENT * num_lcu_per_pipe), DMA_ALIGNMENT) *
> +				FE_LFT_CTRL_LINE_NUMBERS;
> +	fe_left_lb += ALIGN((DMA_ALIGNMENT * 2 * num_lcu_per_pipe), DMA_ALIGNMENT) *
> +				FE_LFT_DB_DATA_LINE_NUMBERS;
> +	fe_left_lb += ALIGN((DMA_ALIGNMENT * num_lcu_per_pipe), DMA_ALIGNMENT);
> +	fe_left_lb += ALIGN((DMA_ALIGNMENT * 2 * num_lcu_per_pipe), DMA_ALIGNMENT);
> +	fe_left_lb += ALIGN((DMA_ALIGNMENT * 8 * num_lcu_per_pipe), DMA_ALIGNMENT) *
> +				FE_LFT_LR_DATA_LINE_NUMBERS;
> +
> +	if (is_opb)
> +		dpb_obp = size_dpb_opb(frame_height, lcu_size) * num_vpp_pipes;
> +
> +	se_left_lb = max_t(u32, (ALIGN(frame_height, BUFFER_ALIGNMENT_16_BYTES) >> 3) *
> +				MAX_SE_NBR_CTRL_LCU16_LINE_BUFFER_SIZE,
> +				max_t(u32, (ALIGN(frame_height, BUFFER_ALIGNMENT_32_BYTES) >> 3) *
> +				MAX_SE_NBR_CTRL_LCU32_LINE_BUFFER_SIZE,
> +				(ALIGN(frame_height, BUFFER_ALIGNMENT_64_BYTES) >> 3) *
> +				MAX_SE_NBR_CTRL_LCU64_LINE_BUFFER_SIZE));
> +
> +	vsp_left_lb = ALIGN(DIV_ROUND_UP(frame_height, BUFFER_ALIGNMENT_64_BYTES) *
> +				H265_NUM_TILE_ROW, DMA_ALIGNMENT);
> +
> +	top_lb = ALIGN((DMA_ALIGNMENT * DIV_ROUND_UP(frame_width, lcu_size)), DMA_ALIGNMENT) *
> +				FE_TOP_CTRL_LINE_NUMBERS;
> +	top_lb += ALIGN(DMA_ALIGNMENT * 2 * DIV_ROUND_UP(frame_width, lcu_size), DMA_ALIGNMENT) *
> +				FE_TOP_DATA_LUMA_LINE_NUMBERS;
> +	top_lb += ALIGN(DMA_ALIGNMENT * 2 * (DIV_ROUND_UP(frame_width, lcu_size) + 1),
> +			DMA_ALIGNMENT) * FE_TOP_DATA_CHROMA_LINE_NUMBERS;
> +	top_lb += ALIGN(ALIGN(frame_width, BUFFER_ALIGNMENT_64_BYTES) * 2, DMA_ALIGNMENT);
> +	top_lb += ALIGN(ALIGN(frame_width, BUFFER_ALIGNMENT_64_BYTES) * 6, DMA_ALIGNMENT);
> +	top_lb += size_h265d_lb_vsp_top(frame_width, frame_height);
> +
> +	qp_size = size_h265d_qp(frame_width, frame_height);
> +
> +	return ((ALIGN(dpb_obp, DMA_ALIGNMENT) + ALIGN(se_left_lb, DMA_ALIGNMENT) +
> +		ALIGN(vsp_left_lb, DMA_ALIGNMENT)) * num_vpp_pipes) +
> +		ALIGN(fe_left_lb, DMA_ALIGNMENT) + ALIGN(top_lb, DMA_ALIGNMENT) +
> +		ALIGN(qp_size, DMA_ALIGNMENT);
> +}
> +
>  static u32 iris_vpu4x_dec_line_size(struct iris_inst *inst)
>  {
>  	u32 num_vpp_pipes = inst->core->iris_platform_data->num_vpp_pipe;
> @@ -1770,7 +1819,7 @@ static u32 iris_vpu4x_dec_line_size(struct iris_inst *inst)
>  	if (inst->codec == V4L2_PIX_FMT_H264)
>  		return hfi_buffer_line_h264d(width, height, is_opb, num_vpp_pipes);
>  	else if (inst->codec == V4L2_PIX_FMT_HEVC)
> -		return hfi_buffer_line_h265d(width, height, is_opb, num_vpp_pipes);
> +		return hfi_vpu4x_buffer_line_h265d(width, height, is_opb, num_vpp_pipes);
>  	else if (inst->codec == V4L2_PIX_FMT_VP9)
>  		return hfi_vpu4x_buffer_line_vp9d(width, height, out_min_count, is_opb,
>  						  num_vpp_pipes);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

