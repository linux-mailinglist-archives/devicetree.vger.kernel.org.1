Return-Path: <devicetree+bounces-161206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 767ADA72D7A
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:12:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B9DE189551A
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0150920E312;
	Thu, 27 Mar 2025 10:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IW8atlC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F7220E037
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070306; cv=none; b=GvHjs4Pm1bs5dZ1etX9esUdnp+bzWOX/BVXGgWL/ERgTAzfYOjTCMSyKTETnhcG/pPtJe5Dqc1wxnxUvBqdzxOIDABWOFQSivg/HzJLdhjnYq3joYduonw7DvIew2cht0jRViN2kPGhvF09QxiMsmsu7Awy/atOd+4OtrzJ/MmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070306; c=relaxed/simple;
	bh=lmxrzIS+d76Qh3zL9kdazJJMQfZpNeJz82hwqqtwmOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LduImw6wqxpf6Pc2OWblKfzGq31ehdM8vBdVvCnDkYwQdg1J3YxrbAbulgFpT27BUX8ftmN5SaAMHdgW1x7S7FawjOMk7Fg8T9eAManGtGE8KKxRYXuEWh5mVN9DQ5Q5Fryn3URneZnwtiLIP3vsz1bZ/MKDYyJQtx7KV9BZxbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IW8atlC/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jEpp012429
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:11:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v9Zn3NFoa6qbW13srYFRWI0q
	FLJJSbYP/Owvwt3xu9A=; b=IW8atlC/ZbCqtLPdmVzYR7QaIKAQHk6HlAPOhO4W
	q0Q9QyyxoZmdkoyJ4YKOFFDndYGN55NsprSTh+IlEfYhzpE60HmbXgBu3QceAYUF
	19PUEMEWhme3G+WxsCNFBEIjA+fKL14fVor9ymQqp9XnVRx44+/8mHNmX+NcyDH4
	YWtK+Y+hUeiFKgcVXBOxBgPnHf2S/NqZ8hO+ZQzWi/L+RZHfi8wqqa+xLzerHDH8
	3cavsP072EH6sEj2hObuL3hwCgT08HY1x2oAQX/PKfHWHtA6T+2z9j2yRFIQs0uC
	IRnJ/q6KbR7NczWZX7u3RRNVM8+lS/0x+OiPoDnvfZ0rsw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mmutjhg4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:11:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5bb68b386so238445385a.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:11:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070302; x=1743675102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9Zn3NFoa6qbW13srYFRWI0qFLJJSbYP/Owvwt3xu9A=;
        b=cJvAdQEQBOthT0p1jfaA/Qrxml4Mwpt6DSwnrGX7V2Su/uUNvcnxlsebj1wbdKwUjE
         zk96u82ietQDKWwQvfF1fdEpKVvI7OBKGpXdTF5moPOMy4Ca4QCFuox9zhIHM8te/wfx
         pdeC/1Hlb3Q5GWaoqvinYh8Ozyx0uYYxATo7uRqC669rbA9q0fl8Bl6WQkBOnasaXx3I
         qUZjkOZiUmDzC0WyRvI6F7AB6uNgYLOCK9eofwB+GruE1KQXm/vVXyAx7EthOJO3MCxP
         f+HwIo1LuIWgmr5eQgISTk5lQRCWNzpKYq4nVOxd5ZbVtpfLGRZg6dDjnxjNdSe63itD
         IFtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBqLpJc9xJffrJpjPTY6BK4OWoFvEjae1k4dbRUwIjo8eebY0LvOAlFQjIc6+mBk87Flv7yWvLtrYp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/hVRjtM7KqhO0cdNDlOf/SuOFOhn5rusakBTNJfddKY9qsdq1
	7vjQgjrRGMiy69aSdRSsvkwdMWjiXItNxxte4olttw1HZG/Tc99lF+7YkB4Js3yDJnqQ/BlhBsA
	b67ONBSttvjLG7SRNa84p15MC21dSEzEzDdSGtNXe0hNhRwkH6r4j7TPCjZMo
X-Gm-Gg: ASbGncuqAHndC7eaAbc7cEiOofmI3xyDIKuC9YpvWfWPTBmUHO9Wh3VV6Vie1VOx1e6
	gI1He2zzLmgUz/GD5hdTAIAKeEOacRLlauazJ3pSRKx5kKgm5SP822rLtDoBUhjFw7zAoPhlaeT
	jZjnYGzPnzXvAt4sCnQib+5EyZBSvb/G5wb8PtIC5CC85FE4FSDCd1zRyxT9brbj2pDgT92A2jd
	LwPTqTkV6+C3LYLAdANOpoU2lgr5oZTnA+DoIwF13cqOh5gu1EpraRxDUJF5riOlEFXwXt5jCu5
	eOQQodHdO+ezHi/yE8c+89lSpNKg4CV8cERe0ywGwMYXnXnqIL4BWoAfl4DeDBk+WX0tWMfi2DW
	lIcc=
X-Received: by 2002:a05:620a:2914:b0:7c5:6140:734f with SMTP id af79cd13be357-7c5ed9f4dd6mr490782685a.18.1743070301844;
        Thu, 27 Mar 2025 03:11:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6t2DqPJhmH7olRi6YdWjzEC6o9DeKuF8NojAtig4n9I6xDbgHy0ROgN2hW3aSNsHavREJnA==
X-Received: by 2002:a05:620a:2914:b0:7c5:6140:734f with SMTP id af79cd13be357-7c5ed9f4dd6mr490777485a.18.1743070301405;
        Thu, 27 Mar 2025 03:11:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7c18ecsm24091031fa.23.2025.03.27.03.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:11:39 -0700 (PDT)
Date: Thu, 27 Mar 2025 12:11:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Sayali Lokhande <quic_sayalil@quicinc.com>,
        Xin Liu <quic_liuxin@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 09/12] arm64: dts: qcom: sm6350-pdx213: Wire up USB
 regulators
Message-ID: <5votyeeny5k7dyozzhksaeskvcut3z6zvp7nh6qilcjhxjx7hp@zfrwhyzoaoc2>
References: <20250327-topic-more_dt_bindings_fixes-v2-0-b763d958545f@oss.qualcomm.com>
 <20250327-topic-more_dt_bindings_fixes-v2-9-b763d958545f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-topic-more_dt_bindings_fixes-v2-9-b763d958545f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Hc4krFyQNzzaJ07Cjdpmwz2CmIPlhqV4
X-Authority-Analysis: v=2.4 cv=MqlS63ae c=1 sm=1 tr=0 ts=67e5245f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=iXEU_j0xfCFYBHAbzAYA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: Hc4krFyQNzzaJ07Cjdpmwz2CmIPlhqV4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_09,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=604 mlxscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503270069

On Thu, Mar 27, 2025 at 02:47:11AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Wire up the regulators based on the downstream release to appease the
> devicetree checker.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

