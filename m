Return-Path: <devicetree+bounces-203198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62728B205E0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:42:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CC1017FA8C
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4488239E67;
	Mon, 11 Aug 2025 10:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fzHvd2rR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFF52367C9
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754908935; cv=none; b=VFo+4ObKaxnHrTUpWc5S7wJz8qB7fnU3CLais2TPCk/SMtmrJs04pY78xwJF+w2GyMsXwQ4Ory5GkPLT5jLCnkjQDNENxiHOYxAlScnw+yR3SdX1AwBhFv9oEDOluJsYl5YU0H4NOKqMh6cua4Rcsxl3j726kn95CR7Vlui7G58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754908935; c=relaxed/simple;
	bh=rFk0obRi8hQtLDiwnMoImh6BTsNZLVJ4wl38YdBMggg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aiUwl67Q9tslM05cezhiF7stbedjCE7KGrwwrKhj1Jc05Z8fw9cpAbu7rFD28JLF+IXnOTuSuT2DEH5jllDA3j+4Raqqg+SjwgSuc9fGdTsxjQHJ+eYtfj0u5ZIw4SBOzawtdDPygZx9arDm7uSd2ycIXiN8A2PqWEvlSXLJTNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fzHvd2rR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dAc6000658
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:42:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/qUBFM4nwPLNpeQX8mDV+PjW
	qifSyvBHQ3VDet7iAq8=; b=fzHvd2rRBOx/3w/ZRNedtMiKH0Vue6b5+BXkuq6q
	/m2PzNgdcKiI1nZunQRLkjX0sBfSEuXyBssJfuEmRRR1Pluoe7eYanjkfV69Gazi
	XLyw353tcX5YW+wNP2IvMtXAXwzu9VAfUgoDjQOwJWlz3uQzeRjgrFwyhTAiDUy4
	lAYuadNcCVsTEKrl0KvE1cTgMFAF+fZ5avF80rYHoVcTDo2O60bStr4pGV6F7C9Z
	TSMmXBNy6PwNvXsElf1V5ZZWBjcn3Xt8sue+lnYweqJHQko0XFVX1XEjbAj53o+k
	T3/IUXrP60gxOvEAchwPcZKANiYjmVI4WBj5Cgh9fuLBzw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dym9m0eu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:42:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b06908ccacso100927801cf.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:42:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754908932; x=1755513732;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qUBFM4nwPLNpeQX8mDV+PjWqifSyvBHQ3VDet7iAq8=;
        b=D67syzH1NvAjylsciqMD8t7vys74gVtaJWbaWQ4wsyLryYNHGoOY+N13tpJQgcU0Ny
         F5jofpSyeeti/GYwtwZSQEEWEkw1k3n2YB2IKhjRbuyatgTadkV0FY4at4UBWbB3okAo
         Rfp72EmwtRFXEGP1tUI2CjewYDom8hQ3OP8J2y//GcM+8phopwWZa/h1/hxtlsZbUzDs
         ArJGlIJ7fhllXL+03hpE9DoV6xoGF+U9kzlRJb5KqSfOrBaxGcnyIUZQeVptKkMPeVBq
         TSZFCK5O03sXwzxeiNO4zgNCEq9xxAw7dW0SRbeEkEyq0aucoacZPkmqMpHpeJPXQbAJ
         1u6w==
X-Forwarded-Encrypted: i=1; AJvYcCXUdNMKsSGDeFJdUSltHGf1R8ILKZAE21CQCA2eYOnY8lOUusgQgCGKhrMiH6mHrcezJ84X6qHdM8bG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7Jg/+rAo2PhJcTC6QvpmAvteU3OR0NyeJVnbJ8PAf0+FmyMLW
	o2EFbV45RlpH/ShvhpiqfEvn9uDG+754uf2HTc/MgJygkajTHs88nHQh3dNbrgiTmDt+ZplaDND
	nUnWWl2fmpaktFLf/2jT9Y0hEtK+QscyXCC6Xqv3niPkKyj9mWZrhvAYXqWorIiJc
X-Gm-Gg: ASbGncu8wdVzgWeZl+wNAoaUO7+e4XoWy3HyPXiWBlF1Q6fM3gfeqzP2sm3lTxMF+Xj
	vMlLFZzX6Kimkq71pdfxA2e+MCDI3uUfcCxpYHuWzZ+3fg8lTNwFUpmToxLRsjuFEcNgzpuNLzC
	ZzUp4ci3KMsniae9Rse4K2TKZME6L2yEFCtKpfn/RoqKKBxGNlTThl0BbLkVSTY0vK9qpPEBV4X
	1q/VOBn/GXCYWjxqsDEOU4xQA4CyGEwkuYUq03UCbLfAgUh25YSkclNTlThV+g2l8U5/O3x/OpB
	JMZoWSBxq166fDFiDjQ76dwXYmX/OaS4bgnRd5UfZbmUG6lqildHFy9F0qgnFB1fAk/MpG4ilhp
	+K94e5Hg9mouO7WdH+5Mu/AmHYnDg1RPeh2RITqaoZhwlugIpazbP
X-Received: by 2002:a05:622a:228b:b0:4b0:863b:f4e5 with SMTP id d75a77b69052e-4b0c97460f4mr73204031cf.33.1754908932149;
        Mon, 11 Aug 2025 03:42:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELrav4533j+uvOnzVBe8xzk6N6rVbp+g4DT4hCXZsWxjgBxbE8yTLhqAz+7n7euXWDM2dFgA==
X-Received: by 2002:a05:622a:228b:b0:4b0:863b:f4e5 with SMTP id d75a77b69052e-4b0c97460f4mr73203741cf.33.1754908931719;
        Mon, 11 Aug 2025 03:42:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332385b11d8sm44123051fa.38.2025.08.11.03.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:42:09 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:42:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: sm6150: Add ADSP and CDSP fastrpc
 nodes
Message-ID: <wf6kf6u3q6na6abvev75bvg7h5nmn6hqvdljvip2ppmk5hkt5w@u7r52cd4q3b7>
References: <20250729031259.4190916-1-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729031259.4190916-1-quic_lxu5@quicinc.com>
X-Proofpoint-GUID: RVT_sv_mE_kSMeRdv9Hc7bt_t7Y5G_Ad
X-Proofpoint-ORIG-GUID: RVT_sv_mE_kSMeRdv9Hc7bt_t7Y5G_Ad
X-Authority-Analysis: v=2.4 cv=YZ+95xRf c=1 sm=1 tr=0 ts=6899c905 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=HRKZ4ecyPLDWXoXHFa0A:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNiBTYWx0ZWRfX+5Lqk3hHOyK/
 Dbnimk+WpxCHa5oJ8F241hDNnFAgxUdeXX5gJ1668ZmwPf97PYu/raSuAbODpQnj9ajbD3divym
 wrhC7hcLgipS1xWXu7d5KX02e05f4Y7jaIHN7N6cZ7iwzMZPPrf8u4BOUMNcPB40RFggUltY+gL
 NUKRN8CKwpoSQWXV3Upnw2jff2qKPP3qBrJOZw0Y1DWo+C/qQlxlrzFej3IJdmXG7B785toRvBO
 k0NcbjYg4hwRWOO4jSt3IX0Aku7h+gaYRHpgXbm3SZTb+/Ev9bQoUpnZwJj9aAxTyZIsYELkR/9
 mw99LpGs1uAL/cnkC1va2DEYVQFrrHP1ZyKNL5XfS9CeSSxmNBYjFZdczXMY6vGqo3pzPTi3i2T
 KqCJTgmw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090036

On Tue, Jul 29, 2025 at 08:42:59AM +0530, Ling Xu wrote:
> Add ADSP and CDSP fastrpc nodes for SM6150 platform.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
> V2 -> v3:
>   - Add nsessions.
> patch [v2]: https://lore.kernel.org/linux-arm-msm/20250703055532.2199477-1-quic_lxu5@quicinc.com/
> v1 -> v2:
>   - resend patch.
> Patch [v1]: https://lore.kernel.org/linux-arm-msm/20250523103853.1538813-1-quic_lxu5@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 87 ++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

