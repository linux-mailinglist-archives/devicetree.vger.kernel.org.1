Return-Path: <devicetree+bounces-158751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21817A67EEE
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B13F189830C
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84192063CB;
	Tue, 18 Mar 2025 21:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l1cBdI36"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA2B205E16
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333976; cv=none; b=nUPBENHNWxsiv66D0rYZMehYxX5DiCnmqh92VrJnP0z7bjkvPNkv/dFcg1cjzHR7riOs7o6oOkVrPVr5Ah2PQXRCcz5ZdOPamqrtOIqZTxwMOKGeBPvgjoDeu9jRJkqyH+Dg/pjsaaCdBHWguDGoKAU3NAU/Axj4XbmRAVx82nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333976; c=relaxed/simple;
	bh=oVDhCneLrzXiBz83QU9c/Kh6UQKeVOnCHUu0xq6bos4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FjmlzZvIekswVZzXiXm3TasaDBkhbIQgNTS50GQ0WKYIf+2UHaKGVfnmbezh1o8vz0nRjtlAsnDqMj+HQ6vffeYzgud52KT9BOf17eejH6jq9wz0n8zMZ/WqjurBfxO63CH/xyv83LPT2fCWiTjblZzrgnxnH6Ztz93/oVFg2CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l1cBdI36; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IIatqJ027513
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:39:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=io0+rG08jyQuVDox/j2ODyQ+
	2gpx3sWiw700hJF1YnA=; b=l1cBdI36n2yoaEyDfiVWhAVfSuY53+jpfitVoB+p
	ZRII7PJ6MbVEtpsQtHqfvXedvLmlPsdQhFBUtQCt2uxQVuDogi49WvY2vlmjTA50
	tPkN19qr7Q7gHw0p57ujIEbxrY8D9w0+bXEskhmCUQayJM9gMpUaGjid7mubEN7K
	zVWk6AdVqYcwMR6gjlwafbfH99TzGxGfDZHWanrwO/4408hpgM/Jn+PjuRiZRYKA
	hZpNl+XzuW1KDwUh7YjOAhID6kw0JqLmlml/bTMJxsqPskZb729gtPrckNrTv+nK
	XmJLXnAuA6asOtGxqdN7o0pl9a7xXeIL6l4hLKR54bvbsQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwtkbsc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:39:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8fae3e448so143677016d6.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333973; x=1742938773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=io0+rG08jyQuVDox/j2ODyQ+2gpx3sWiw700hJF1YnA=;
        b=p6YbjJG91OejhhIEHvwpsUeorM/0S21DiMFUILA+PMWSC43T2UqhCmR8q+zdQeMZKe
         Ql1ASQNz0NFHsMZr1c1EPSiEg+dnjfZQPUmgWXCq8KjA0+Lifzip/guA36zMZd9mz3yA
         +GtjYn/ukomojmN4TzXqyeus49Q8yJdRG7etk8ABPxCVWWiAuQoH1N4DD0Y3i+C/EdRe
         0TR0oxIqfi9chFUKe3zt5zI4ytpY8QxFCRf4ZJN76gdnlbBW0F0n1b9wHrP1NXWDmty0
         IGgfxbek3P8ROEHWBH/SRUhyskjUktSB2ml9QU/jV9sZSRGmCtEQCQyFnQxS5qq5Us7g
         2ZUw==
X-Forwarded-Encrypted: i=1; AJvYcCVaCiFRLCz5xtXoWOKQr3r/SJfZ20yyRh2PKfc8fyDIRhrCxd/0nrc1F7mTmbmg8ESNqqh7QzlaBMoq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywom3O4HtzJMz/KrpXKlQFmRauJ2RgBWxbGXTZ/ZqiBLYBuPEQ/
	qPcVs1O9k1m7Ko8tVebaNdJVmwrCKTH2w1z0P3NSelIUa3plIZZtjaPntiUEMZKW7BedeCEy+qE
	hcBO5k4HjmSwM1S04iTBwjLJnt9FEZfgsM/0O9r+mB8LbR9hRBMv7AOhJokBfpr4XtOAp
X-Gm-Gg: ASbGncu/P/isDh/wC9GD1vCXs97zqbCu8pavXsyLQy7cv6QN9Nnkk7vg3hgbjqNWQ2B
	wJXb8Q3Kmsme09UdLI4kZghMTphIJjExRYjJNTZGeGZbHe0SS1L9+rS7cem0Jn9k8z7K/jUSwqQ
	xxvG82jp4iV+Uc2ImWfbVqyMBwnbUEYRmbMkUYx2VNYsZv45WsMVai1u7ZXxDFqT0dfbY3ksh6u
	AzjuEyhscuMXhwoSkD9C26swM9g4iE+EIeJ1oqfDkSnz79vVgTDaYC7JoIKWQrluY6dQa+x4/mA
	QJn2hmBHh2SzervhASej2BWbAhRBnuWa8Z3vsI0S5v2myCLVflM7eYIGY4V5TzzCb/6YLmK2lYQ
	CUB0=
X-Received: by 2002:a05:6214:c44:b0:6e8:ee44:ce9f with SMTP id 6a1803df08f44-6eb293b4a2dmr5529246d6.20.1742333972672;
        Tue, 18 Mar 2025 14:39:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0U2l2RyAju9tgrxofWi6cQ2Kcl1PuoMDDqu8P0QBMhO8hHnpC6loZwdkR82n6lsEl9RvuDw==
X-Received: by 2002:a05:6214:c44:b0:6e8:ee44:ce9f with SMTP id 6a1803df08f44-6eb293b4a2dmr5528986d6.20.1742333972263;
        Tue, 18 Mar 2025 14:39:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1e8bc2sm20796751fa.104.2025.03.18.14.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:39:30 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:39:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Stone Zhang <quic_stonez@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com,
        quic_yuzha@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
Message-ID: <4srz3ztdena2p2vlzymfmk6oz7q6ocww7y7mdxiyfgdrpu5may@nhlvmj2ofkcs>
References: <20250318093350.2682132-1-quic_stonez@quicinc.com>
 <20250318093350.2682132-3-quic_stonez@quicinc.com>
 <64ccc09d-7e1e-4c20-90e9-43b36a9cc46b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64ccc09d-7e1e-4c20-90e9-43b36a9cc46b@oss.qualcomm.com>
X-Proofpoint-GUID: YQ5fxoawJbH41l1YQhVcGqhiNXkAaLE_
X-Proofpoint-ORIG-GUID: YQ5fxoawJbH41l1YQhVcGqhiNXkAaLE_
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67d9e816 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=NXR--wKKspllqp7VDo0A:9 a=CjuIK1q_8ugA:10
 a=dK5gKXOJidcA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=fsdK_YakeE02zTmptMdW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=936
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180156

On Tue, Mar 18, 2025 at 04:54:25PM +0100, Konrad Dybcio wrote:
> On 3/18/25 10:33 AM, Stone Zhang wrote:
> > Enable WLAN on qcs8300-ride by adding a node for the PMU module
> > of the WCN6855 and assigning its LDO power outputs to the existing
> > WiFi module.
> > 
> > Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> > ---
> 
> This change looks good generally, but please align the various stylistic
> things, like property order in the nodes you add with x1e80100-crd.dtsi
> 
> I also see that board-2.bin doesn't contain the variant string you've
> suggested ([1] @ commit 646e008ec53a8bb9ae16ebf98a65b29eaefd6da4)

Yes. Please at least send it to the ath11k list as documented at [2]

> 
> Konrad
> 
> [1] https://git.codelinaro.org/clo/ath-firmware/ath11k-firmware/-/blob/main/WCN6855/hw2.0/board-2.bin?ref_type=heads

[2] https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html

-- 
With best wishes
Dmitry

