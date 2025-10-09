Return-Path: <devicetree+bounces-224832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5BDBC8376
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5902F3531C7
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7FEC2D7DE0;
	Thu,  9 Oct 2025 09:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X4WQfNsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE622D77E0
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760001021; cv=none; b=EqSTM7RnMGV63RxsqVThbyG0b4+HD9d2TuHAX3jFwlk23/G5oir5H2krZrm9w+NHQOvQrOvQ+zXvfRdWbHPQMJqs71PRrTpsmUnLdFsvCjh483WdlKcmqtDtRRP/olBRuh/jTtXsEf2kZX3Ar3DBinGnDMHjwQxr71r7cHvtSGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760001021; c=relaxed/simple;
	bh=1gLto9BCDROKFQE4dD3C8sxYVc2P8E3H62tB0Tiz5aY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oa8sUJM/9ygecndgi5I5wRRnqKGRRMYpO0pBGfHAsEYcrsjwK/UU9HRCX4CQ5512ZaRIx7VCA82bOMxz697Bg2dzE758yVJDUW9VFar+J1xl2XoLdoFSsTGlkoMNelF1G57bn99VSHg1XzgRzi1a2XY9m1AVOZR2p21PXavDKhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X4WQfNsp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EvFw005579
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 09:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1gLto9BCDROKFQE4dD3C8sxYVc2P8E3H62tB0Tiz5aY=; b=X4WQfNspdGcNJbZr
	DSXD7I7PL3YF1t3vwZYpAGpfgw+Mu1lbIA7nVDCrIFIm1E4oZLZ+1Iz4gfCl6qwR
	+XQQ2B+EuWj3+o4fEwHRRPKu3D5zusxKR8IeO3tyCmtcXBqKKNK4gWlxi1hNM5dl
	kD5fI0QVZxVlTpS6c8Oog0RfYtCkyqwImFsxGlnDBWumvZLtuPVJS4SItj1n//qL
	2ShnL2sun68DlebdMrRZLQw76EnwyaIhpKMdaVT5kQEeSfJpvJ2A26uEDxxi9iKp
	NMBmzzkvbl3d85tcfXYgNPsvk3nf6hOZrSqwgZ7ue+MConDu1ULj1wLbk8J0QUle
	RP9v5A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4j266a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:10:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-860fe46b4easo32932285a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:10:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760001018; x=1760605818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gLto9BCDROKFQE4dD3C8sxYVc2P8E3H62tB0Tiz5aY=;
        b=tG6sEKnAq+8gwgU4Mri8bLvaMFMWqtK2n1DL0H41cG5fS/LXOi/pOPFltzo7pryfTd
         gxb5Kg16jDJNxvGgDwwxIeukE6HiZITMvZXVT6TEcwAZYioKwjm3fK8siG/yccNChwjK
         iN8kcf6y8enqILFNUN1KAt1JCjXIGwleEIV9/x27NheR21DFDcrxia2ber+pc0L0GkLX
         p7n4ZISuJ724XvxSc6drq1mKlwtS1ozCCAZGUL6XFnHQvWrmNbhoCO2WLOSlpihCZZdQ
         N633rgeW07d+rdR8mme/Ip5pWKcbyuisK7rkoxq2rRppXmEkSST2Y2ZNm+UPS5d70zuf
         wFww==
X-Forwarded-Encrypted: i=1; AJvYcCWZKy+XglJy/yG977OT+LSitMkehJKG0qQ0bNxgLP/KfJRAHXxWfJIXm2W7DZ16rmRAuMi2+A2tq3kh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5/V5A+WAAE/Bx0sYdvsrD4bt4nV2I8CSEtotnbbiO0Utfg2dO
	acs1ct10Idpxvl2xRZFsPmK6fGuG9ne80Kse3yFmmDuII1dR5X1o2XgJMopGLhIJJFCIx0rHMhh
	Ih8x2bjOqhTP2DJumdYKzsELvgK657irsry7qgzBQCfPEnKvlItJEzXgvxEZ9aWah
X-Gm-Gg: ASbGnctEmo3qQAZLiko/ZcVaNfIz6zVQgZRgPDczh+k9jSPhgqgleRL+33qycqi/LGu
	yJ3iPg4x7iZxSM2CeM1miln/re1BITVE+HSvTkdmE0m3pNY4oOlXzOGZHE7vAqNtQp6LGxGcakP
	00eqyJ1NVILIasiDNwqxPHboP746t84YD69uMCdKB3yWkoSCvvohYhA5bDyLcIim4TrK0/vM4kf
	ch/sK0uKSFePTDnZc5CvCyIHpGg2mbLW6VhqJHSnDjDiURwe/PFd1HkxK6mm9QhY+DlryXkjQuv
	/ltF6jk+pBGAnVexp4ZLOuJ+TVChB2xmuEK6uKPOLim3+B2vrsmmS+fVd3IfP8bilBK//7QYoqB
	uVNMRKG9WPfmtN1Zwz3dXHhd4rtY=
X-Received: by 2002:a05:620a:7104:b0:835:e76b:ba25 with SMTP id af79cd13be357-88353e1a4e2mr585134885a.9.1760001018056;
        Thu, 09 Oct 2025 02:10:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6MZb6QOnbhBTE/91nRDArgRgqRLTEI+IVWFn1NxgCnvCATzVRomE0Pl/cQ96//aeLXvp+jA==
X-Received: by 2002:a05:620a:7104:b0:835:e76b:ba25 with SMTP id af79cd13be357-88353e1a4e2mr585131285a.9.1760001017473;
        Thu, 09 Oct 2025 02:10:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4c83adec08sm1153029466b.56.2025.10.09.02.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:10:16 -0700 (PDT)
Message-ID: <597ae997-37a4-447b-967c-8fd362098265@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 11:10:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add eDP reference clock voting support
To: Ritesh Kumar <quic_riteshk@quicinc.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
References: <20251009071127.26026-1-quic_riteshk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009071127.26026-1-quic_riteshk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UBNIgGBSwJCI8BoFZjDFzWpSaZrH7EkR
X-Proofpoint-ORIG-GUID: UBNIgGBSwJCI8BoFZjDFzWpSaZrH7EkR
X-Authority-Analysis: v=2.4 cv=f91FxeyM c=1 sm=1 tr=0 ts=68e77bfb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=rf8yBW790zp7CXIHNmUA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXxa1Vv2Rav8px
 GcL8m0BDfl8DnzgRfyQhES3mheR7cpvX6Bhsf7tb7zv4iTESN1miupj2+/m7/vC888X4p0h2nnZ
 ejpJ1vWPpcyk8lhLS6yZEsEt4eKvswfZeU5fymnfzJ1TsbPQfcwgtPHQj8pmCZvUrYdXwISCKyz
 QGhxYZGgutPdTL5WQrx6Wyw4ND0dBHo11llq3ALKMWDZxzpr5nwQ+wFUadjIRbFMrpSZJi6S5cp
 +RsQy/mD3T0Hm1nzJLLk+GUPgO4W8BrlAnqAowaXftXhELrjbTuTNSyRhuUxz8YnaPXrYPxrCEx
 hdru4PQavnGFYncmvML3uCkuVYldXKV0RITyFtgxyFZaeJK+EXXR0sZgalVG+u28wE85vxrgV7I
 ngGkBiCLQeh/IW6DC9L/l7kP1nj30Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 9:11 AM, Ritesh Kumar wrote:
> eDP reference clock is required to be enabled before eDP PHY
> initialization. On lemans chipset it is being voted from
> qmp ufs phy driver.

?????????????????????????????????????????????????????????

Konrad

