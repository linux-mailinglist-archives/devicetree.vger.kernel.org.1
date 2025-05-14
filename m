Return-Path: <devicetree+bounces-177445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9FCAB77F6
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A77C1730C8
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1DCA296D22;
	Wed, 14 May 2025 21:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wi6YVY2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B00929673B
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747258143; cv=none; b=lyXgSMwZwaujJinPbkpChKEY2r+jQN6RbfGl4rBscsDkwOrnV9ymgL4IzirXcB1oims257k0c7QSUXF24LJF9DH5bQbHDyjdU0QmWWjULWiTA4MN7RRLvgEoGz/N0GcEpFWsKMvTNR8pZ9DXUnZ38ieEoAA3mFEiP4iCdrzQQFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747258143; c=relaxed/simple;
	bh=gTxoIidJRIRRVDXdvOL1GC+8KB4tp/V3gMpMeWY69LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bCwtYa9wvmQelGG7C/Sc36XGkQxzBJYOoeiL467i3x6c34y/vGiMPxQJsT9ksJmO/LvmH1JVErgCnW7zJ9sMjuaQ+hf/Hh6YihB4SUb+ZRkctMrd1PQSTiVVJ+MhHKEsg0mM2GtgUxvGRAlBDvv/QvdjjahTxVBoh7W9NyrK4vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wi6YVY2w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EKvK7l030349
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:29:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RsYghxjwwfqPkfH16SB+W2N9
	Bybu234eeCOwqX95rqg=; b=Wi6YVY2w4bveQCVSvdE1Ny/xwhIXNZkoOJVRNzSN
	FYipLExrZ5u8Ufvl9ZCsPEMR7sp6DMAH++wjMFKsHHUgDyKs0HhjEZ1+CWshP0rt
	zMgTYGOccJ8Xy4VkNDnzUQB4HVzyGz8l5pI0gph98zZf9onW+J98UXIRZi3MHRl4
	qnboshFlotKP9wXE3Vtz/bJyEiq0KGugXXO+mcxMTIFE6OwK18ZrI34ZCxgPi6Up
	BctPYyGElvEhVv2U8dXDWMiZR8m/6YwK5KKuwuMieyrGBqdFGIv0tDVJFljiX1pa
	coOQtP4oUzH0dwmha7dKT5P3/TJSDTiI1oY3nrQ1ygEJFw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcnv4sn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:29:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-478f78ff9beso6863301cf.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747258138; x=1747862938;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsYghxjwwfqPkfH16SB+W2N9Bybu234eeCOwqX95rqg=;
        b=FU4SOpikDBSIV7qxKmMI2VpAm1Fx9EShHpvbuMZvyWzn/uI2/oEsQf0kOZ3qkpLiI3
         jyuNeH0WMGJP1Fc1utBByH1Bvn03KCI7jH0eIoyTXwa/7zUQ7eQVSBoYOejcX0YJGVRg
         PVZsl1xPLJ6BvtpaFd2So9YyOvClvcbq4tqjIFppfdgYro6/ZRmsIQrcPXkpiDZoaKYS
         l8+geck2DyO0P0Hacsv5ZKBnEnJzXdlZ/GnZp7zoZLKtcEo63li6DqeVkpc1M31l/wEC
         h2LuFc7/5V0fopgs3NsAMRcOJ+vAj4BLW80wl4CFYLSa1n+zpOMNss+L94+P+SEYBFu9
         JyZg==
X-Forwarded-Encrypted: i=1; AJvYcCXg0Jt4q9qcOa0BUKZsMLLtXtWerQYQE+ZAugdaEVcsekH75JrtCHNNI8p9uZUTXh2YUdaNnK0RoAHX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7PzzaH2YDn1IUxLMsfzUtj4pQZIEAigCk0wSjhWjubK1VADh5
	dr7MtmjZHuMaTAC1nWRU6OS0POJWMIQQX/CK/NHJgWDpNEcFoYYg/N0hYinn+wvYh5Yxo33x28t
	27j2vbpz/R9cv1ajJiRw/THvw7RIpxhZ5xWnD1n6zDR7Q39Er8J1soicZJJrz
X-Gm-Gg: ASbGncvtMQqR8asheKzyiiV1agOF+JbBQdMkyFaNJEksfi2MyJrnF/UQ+oaBQ7+tPnx
	rz2m+rCGr0CevS3GPRhdRJ7/XzcyBg6SsrSjmTuKjHhxYH0Gd2pzU2WMUDXCOFyFsZsjSKg3wR8
	WpUVhl1QfG/W2uar4+rWHzA89wZGos74HTnetMgGsGaOjCIu2lwTqik2qBYnmGdNprRdH25TxjT
	JOXTDrHTqVxgWBnNzOmRhlQAgb2SRbKQVvMZCrtRfXdUDueWrozHX7qpDQBYV0/21iyY4KrKYpm
	1dzIMhspZ2S9tN1r5iKu23hHpfd40+0kA6Vg8B4J18o6uwNNLMTgL7n8teC9modJzWreKHWSBwo
	=
X-Received: by 2002:ac8:5782:0:b0:494:59b0:7347 with SMTP id d75a77b69052e-494a338f8cdmr4118351cf.37.1747258138508;
        Wed, 14 May 2025 14:28:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlKluSGkmg0f5Bl+QdFi/VJlor5IWupRH/g1xYafaDWacbs+pcDc5DlUBZtWHHVfOpPHCLkQ==
X-Received: by 2002:ac8:5782:0:b0:494:59b0:7347 with SMTP id d75a77b69052e-494a338f8cdmr4117841cf.37.1747258138020;
        Wed, 14 May 2025 14:28:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc645cee9sm2378489e87.75.2025.05.14.14.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:28:56 -0700 (PDT)
Date: Thu, 15 May 2025 00:28:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 02/18] dt-bindings: clock: qcom: Update sc8280xp camcc
 bindings
Message-ID: <xlul47xvzvaexbs7w3erpfel754p3nyvnkaqdwjktbafugee5h@ppgxmt4cgnv6>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-2-571c63297d01@quicinc.com>
 <oogbxu2uphyhknr4fjbc4ato6q7r2iermvxbqezyqd2xwamqtr@cddhw4kh6zzx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <oogbxu2uphyhknr4fjbc4ato6q7r2iermvxbqezyqd2xwamqtr@cddhw4kh6zzx>
X-Proofpoint-ORIG-GUID: _pooeXp_PKvw0QxnYdRp04-l3JIB_PIu
X-Authority-Analysis: v=2.4 cv=D8dHKuRj c=1 sm=1 tr=0 ts=68250b1c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=3T6xumy5ldElVCuf34YA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5OSBTYWx0ZWRfX3eFvbwwyNGwS
 1pmdm0fzFlwJdUdlKx4IhkxX5sAGDAECR2erhe4LXIhG8nCpc32RwYpGWX0qfPwdlcvrvAPb7DE
 R0picWTgTAXZ1lQEK6lU+SgbgW+OVRd2KB+kXYVLLKegbQzdOn/gpu/3IR8I3m3BjmOH3O+aBUq
 Hl/ifb68UwOedjqLzUTlpPJF7qAMXsp2i8ygPpvQcGQR9Qc+8dyQ5N9YTz8IL9bDKeiCMxeqRcl
 6kKtS0JWMUoxT3/hP71YrELYGdsG7Ott4F1iE+BPD04DxCMedEe5OgCs1o4tlnp8rhBoCv7Df9n
 056MoMeo0Wx2ZJ2JgzN67EEyYFUte9Oeb9Bvv6ICr3HT+4DAGxGSGFd/CY934ExCnO3kc6gXiih
 +gZaFWS2PO9phsKKJ9/hrhDsFAt41rzm0btyCkV2fj5XdjzHhu/9ijmo8b2P43JY0n+OELdq
X-Proofpoint-GUID: _pooeXp_PKvw0QxnYdRp04-l3JIB_PIu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505140199

On Thu, May 15, 2025 at 12:15:30AM +0300, Dmitry Baryshkov wrote:
> On Thu, May 15, 2025 at 12:38:47AM +0530, Jagadeesh Kona wrote:
> > SC8280XP camcc only requires the MMCX power domain, unlike
> > SM8450 camcc which will now support both MMCX and MXC power
> > domains. Hence move SC8280XP camcc bindings from SM8450 to
> > SA8775P camcc.
> 
> It requires MX for PLLs. I know that we were not modelling that
> relationship beforehand, but maybe we should start doing that?

On the other hand, it's irrelevant. If we add MX, we can as well add
MXA. So this seems to be correct move anyway.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> > SA8775P camcc doesn't support required-opps property currently
> > but SC8280XP camcc need that property,  so add required-opps
> > based on SC8280XP camcc conditional check in SA8775P camcc
> > bindings.
> > 
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> > ---
> >  .../devicetree/bindings/clock/qcom,sa8775p-camcc.yaml     | 15 +++++++++++++++
> >  .../devicetree/bindings/clock/qcom,sm8450-camcc.yaml      |  2 --
> >  2 files changed, 15 insertions(+), 2 deletions(-)
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

