Return-Path: <devicetree+bounces-249280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CF293CDA72D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D14F6300DBB3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03FE34C838;
	Tue, 23 Dec 2025 20:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T0uHMmgc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bxVt/O/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3EF13777E
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766520957; cv=none; b=oj1X/GW6WrxmX+K/1GPiAGLXbYEyyH3g1tR62r9WNHMNX1qGvDECQjB2dcc7heHG2Xa55HjqWBETKaEoi7PZNRBjE6xE1DZwdRVUfhx6Lpb2NW6popviRvUN3crJYt8XaZxW+NY0KFAY7AgjKCfEEO0HpYhraR9BgSSouwP0eug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766520957; c=relaxed/simple;
	bh=HKaXAFN280w772dBVbyjDj9/rLyHfV369fLHNnVHey0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=psUavqEBFFjLswN4OK/qzU5iEqMuMnFvQk7Y7tN9eYcVqfWjxgD+LmzbvktaDg6yfM/lJZ8lri5pfx/KhvkxHeQYEmno5SaAGhS0p0ZCEAWUVa/Ew9pIKnL7cO7sIqZJlljIOFvMzmL3ixefNyIOJzN1C0ACqTxTKySZ3GK3nkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T0uHMmgc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bxVt/O/f; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJCsGR1056223
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:15:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B26Q6QBnxEEdyF1X89NLCgmm
	ZgY6Dji0pKhEee0lVvg=; b=T0uHMmgcDN5pm3nMpD3kiJUBg2QuNEP/j5RvkeKU
	qg7sB2j3ja8czEpmTgY8iI6ZWlgw3oNyEnDxal3YVWP12llGSNfYDbUdKQ8hwX1f
	h/N1w7AziRNVag2NDGUx7dCavVS1Q1ozOPIzB3V2wOlz4Hkq7xWyXuWz+fjw8eCr
	b5wRHspqxhVcMlL478GYkz/tUt05VNd+C/tyWZshIvAXFXiwu9x3j63hsGo7MJwP
	AvIz2y41wrCC9A+VlhkexkBR4YR/Tom+sdPrqK7hXgEMjsoUQ8B1LllUpfOjHpR3
	YQS7zvwYBV9MsaeV71zt18aQW7FGBIk53r3U/AwBnkxNXA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v076c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:15:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed79dd4a47so113612441cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766520953; x=1767125753; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B26Q6QBnxEEdyF1X89NLCgmmZgY6Dji0pKhEee0lVvg=;
        b=bxVt/O/fFkr8Z8ShGxHsux4hsPNbnkE8i2n6X7VUIsK8053zzU6LiA/UMP2+Aoei+B
         bBS0QdnmwY1jnuVScLugAn25kyX+p75HkjaKAAZ6Fkq9kuZJRW5dKPFNC7x0eeENYfri
         Rgu6DCzB1++Oa0pzoxvRMryhn7PmOaybf6o7hmuBr2PyyZlcmSVHloJplUEVe1l466z/
         /g/dm1yi2bWw3CsZPGsCh1rTo1ii4tSefC/X9X1dpP6UmndHJnjKLOa7NdzTSuk0QlyH
         2jCiKIUHAipxbqIdTIrb5zzSY+ZlaxZ72BsgmS9jXcccbTGR118Dri2VN31AbI7E708F
         lwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766520953; x=1767125753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B26Q6QBnxEEdyF1X89NLCgmmZgY6Dji0pKhEee0lVvg=;
        b=cq7+E5SeJjpPt1YNBa4dYly4gEgyhTwj4dD8s9FeRjTEB+m2QNwl18QlaSCksTS7R5
         jaSQlmSUCR1lpKmyLHWuyKuoHMUMK3+6HFvBPeWAVuxyKXjkOmIJ5yY7xODG16nUot86
         VDuUuKGyDe3MNcTAAaaJjJ7T9ZIIvVHvKZUe7LOqLMFWntiLKbO0++09WuvYHuzZ1kJ8
         bukl8dEyntqSUyv2vhpDtjYP/OwYqxq07LzuzYgkysRAzannDEbeVp89eOhUOXskcwWq
         Tn+XYEk6eWB5UyLoqjcFqXSViam8L9e1nj66T9Vj8RM8eDhaQLOKftZxTBHsR9eFVdYe
         ns6w==
X-Forwarded-Encrypted: i=1; AJvYcCVE2FwwnUJmXZTSuXpeudcfy8ZraoiFLl+kNHle1nt9aumITzMnPxd0+za/ke2h06WuPobi48My5HN2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2tgUilR1Xfc9PWC9Cv7T3aiZ9hWfFogwFHY4WNMHv3D9ys/3A
	swBvf1XjatcQJN8r1G4h3uOKZsgJ9QFaUymNQi997t2aeQdfCp8iLOMHk45I8jZtDbnLlyto4lZ
	lXtDHaVaQLqDG/hWXHX0K9NvEUix5VoiRZ6AdflimpOVy9V7G6LkhJHhjEtakeNJx
X-Gm-Gg: AY/fxX4fbxzFnIhIoEMpRbuPQX2q9gq7THKeBHcK2ErzHY4itNKyVcv48z8M7shvWIa
	fmykbj9ros1HtO+cWOLDXRZ2/n7HZKO8e5t6A9dRMzbIgxOFkG8m/lVPEV2VgMCgHEbldmrf2q3
	pwlVDEwZv+P07ftTK0KaqYjUmbsnTjzRgN3D2Hq+WsqwAi4RUOhJfCATkfmTnTrNQBEN102b4Al
	C3HRrG80bZEyTtwTmZLJ/qnmvWN4ksk3KmUG1IdbyIlX/bLnYNQq3flaWJ/2/Y7T7XQXYV3ERao
	Ztdw8BJ0EEiNi7LH58WAXQra8lWdtGc33wtaKa4rLw3m4KWn8OqjXB03BUHSWJu6As19z1DizPb
	dbB+TeTSz/ioiuCB36zSTNogS+7oSjcrjxSM3Nqf6O5e1C5QJhf+csyGEsuSq+jJH/lwYyd4zz+
	oRvvgjQ/BUHEdOHTG/qL2L+c8=
X-Received: by 2002:a05:622a:610:b0:4ee:225d:ebc9 with SMTP id d75a77b69052e-4f4abcd29bbmr252266181cf.12.1766520953401;
        Tue, 23 Dec 2025 12:15:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFESlK8cUqg2pI93rCBRIT7LmshsGgU8RgzlyuuevZA6TzkJN6XZ4woOf0VjLdPqu2JiIaYmg==
X-Received: by 2002:a05:622a:610:b0:4ee:225d:ebc9 with SMTP id d75a77b69052e-4f4abcd29bbmr252265601cf.12.1766520952829;
        Tue, 23 Dec 2025 12:15:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d85sm4243398e87.48.2025.12.23.12.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:15:52 -0800 (PST)
Date: Tue, 23 Dec 2025 22:15:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] remoteproc: qcom_q6v5_pas: Add SoCCP node on
 Kaanapali
Message-ID: <voeleeu4tb7pnef4tag2e32n6vgwecglo2xobfn2qogkpv4tf2@ycn7ucnsqu23>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-5-5b09885c55a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223-knp-remoteproc-v3-5-5b09885c55a5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2OSBTYWx0ZWRfX6u+ij+XfAFnq
 bXPS6mIWvJ+y97HAI9fpjhI4bB1l3E7hThf1Whh2QRVYDnwuFwi6lwf448LQNJXeMp/BLGciHW1
 iWPk52i1zH+ymGoxUyeNUNKx/DKBk2IsajRFtKKqiVcPJ5f3pAAjUD3hLUG+ebvMfDMK+zR6Un6
 4eFt3GjWn0Wh2PHo0Pt2/Tl5XiEO0xGR7RqijMmzcZaEkZN6RcX0RA3DaW7X9lCNju4feTK9nC2
 Ak15yC1gv0140ePpn8AsdfKATvs/3TLAvb8YGhQz+ApsG+e2irYc4i9xk9MdDImHwV94hwYHkMq
 4BnfSigZl8rDDgnoHGIDTurNfE5+KowUAAuZyEzvnFKlchXoOXYXlw7o5YNFo2t+PX/+yeJoRnl
 Yw4Y4xuLLWTs/TpC58WTkUDQzseslFvUxmIYIj26NUglWTDgxubFIYssQn63Reu+oPfC1EOsc6x
 80jDUPFunsQjr64b22w==
X-Proofpoint-ORIG-GUID: xaorXg9er2PIKcya0u8dkOPLR428XDCx
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694af87a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=6tj9FcT98Ui8goLqYs8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: xaorXg9er2PIKcya0u8dkOPLR428XDCx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230169

On Tue, Dec 23, 2025 at 01:13:51AM -0800, Jingyi Wang wrote:
> The SoC Control Processor (SoCCP) is small RISC-V MCU that controls
> USB Type-C, battery charging and various other functions on Qualcomm SoCs.
> It provides a solution for control-plane processing, reducing per-subsystem
> microcontroller reinvention. Add support for SoCCP PAS loader on Kaanapali
> platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

