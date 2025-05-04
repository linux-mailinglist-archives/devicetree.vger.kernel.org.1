Return-Path: <devicetree+bounces-173469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45445AA87D9
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 18:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5D8C7A539C
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1472F1F3BB5;
	Sun,  4 May 2025 16:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p61HPtGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535471F1539
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 16:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746375231; cv=none; b=XokUb4VsIQeNbxv8b1W9pdhzvuuV4dYAgR+rC/zFxwVtlI/rMQTfLwgp7wV7Lfqq4jonDZbHsqkey8akS9YOYxe/j0xJaosIDYAn5KzTqyrSaL7XKAoOSqQUFEB3Hql7mrXWN8y/UzrWJal3+ShtMz61e7ledIvY/2r3Ft3Nu1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746375231; c=relaxed/simple;
	bh=Skbd065aT0ZHQcN9uGka7V6r73b5ykLWPWeCTpFhdBE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LgvH6ktatTvaTEaI7aZWv9gehhygXVdofc2WQOc4D6qiA1GrKl3pYkE29BZg7jVGcu/jXWbhGcZ+bmUa/HKKpc9l1dbc/j06C4X/Pe4nVbCQFBMOE/WxwcSu51CcsX9ZsqCjqOB4+zTcNpxMOpYYlT9F/ccMOChVd0QhfYLtJ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p61HPtGl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544C5fKe032482
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 16:13:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UZZqo/joJUMTmddqZvrzyvK+OoeIHz4Jyy9kaXceNaA=; b=p61HPtGlIeEUxjqo
	ybywT5R1PFpAyKPZrQFAiTzHEkkKv0mRm11o7LyHDiys31qJI/nQ45V0w0HEnLwx
	Jc/K2zT6KjvWz7OkhlHVloBS6Q69jmEjaxNIa8wxcMzaGwNE2cpfjF74yleafYys
	2H9n+GA4P3pB8MclK5INKPmMr+tVT+rJ7IDT4wZ586o5OyAjnulK0p0Gpok7jnwZ
	Zohh2mA8Gb//nS99mU5BcKvJKYO8aPujBAaiE1DVjYrvTegcOHS0+jMi7BlIcM+x
	vpIhZlTndetVnqAp3JWyG4pCb4vL60Zq/D9OsRhtacCzexQSUTUiJi89EHyazPXD
	JLDw0Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep29s9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 16:13:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c95556f824so343511585a.2
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 09:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746375227; x=1746980027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZZqo/joJUMTmddqZvrzyvK+OoeIHz4Jyy9kaXceNaA=;
        b=gjaC7ga3DXnkn46WENRD2pcbNgKKN5bQvUas0wr8XSdXB25IKx4PwA3iqDdZkwt9nM
         FXCBGlM12VsYXMH3gDkfwhk8ILTp3uyE9dbd1hjG1ajL+u50aNpoezz2uvLPoIyC6nsr
         xuqd8PwV1m+apooB0znWKCnrj5DVAOdhhuwCyWGWVOQXrw/OFQFHIWDppYROdbguo3I9
         2ROhzfl4PQb22G6Zqjgzj2OMAgqdxetbZ36bNfnFZahMsB9P4dIghR/eKs1L2B3VBi5p
         4lLaoHN2Evx2bwX9XMPv9FPJh1uHJcvQHSXpc0uiFwiS58P89IgGPuZbVckpMj9HEW0e
         FKlw==
X-Forwarded-Encrypted: i=1; AJvYcCVTTkSPqO0+Qii9ZOGCpi9CFhS5evVdR5BCloHStoERQvEpLIVUFhFXLQJ+kZN+RxqIaltIQM0GVpEs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9kclwveY6LSR9DoaKG5bOyKvsihCmZ89+1jFdMHyDnXuXrZO+
	/GbdYTIIZGvH/0MrRF/cJHPMyTdCv5c3u/R4rnx28oDojzSJ0wsG9zd9MCRPvUdQ50MDHJ1kPaS
	Pb2Sgb2c1yXmt909aSpc+trr2+PuLnAH/gB0nHvAENdRLMfAQ5/S2gXACd7DT
X-Gm-Gg: ASbGncuwW0cRMVNoBUvp7ofF10maa12UQnjINSLlLJhBF8sFTi6AHUipYGcv0+MdIat
	btc2yZ97c+ejYdImJceYlf/yiVpk1cvrUyJ6MBaR2cQ0j9h2k9D3z1cYWi7rCMcCPXzXEeGRTSB
	BVFlG2UuyOa2eq7KfPk4jn9pbHdcfXHxLn+oKLX+ovfFzgHMczIVllbMnXxyKLS2PWwQspa8Xeg
	jXQwL0dQB7yxeBDUOc5XFdJ+NtbB44H+wBXgWdpukgnlqcoo7cjlPtW2rng6LYVZ2C5btFYTRaI
	JxFIjEzgfpSE+vWLdDE10AHQ5QGqIM23xNEmNafPDVP+SjfPP1wPbOIlngJG/Jpp9HwyOI/tKqx
	uuyiMr6tFigi2VhHemWDakNJM
X-Received: by 2002:a05:620a:414f:b0:7c9:23c7:a92b with SMTP id af79cd13be357-7cae3a883afmr521805885a.8.1746375227112;
        Sun, 04 May 2025 09:13:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWfqVRImHTF2hlg2i8dPTXb3VY+dorTtSOXnHwH9+M7i4F2YAepO0JanfpdKI8BQ8brOlCnQ==
X-Received: by 2002:a05:620a:414f:b0:7c9:23c7:a92b with SMTP id af79cd13be357-7cae3a883afmr521800685a.8.1746375226766;
        Sun, 04 May 2025 09:13:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ee937sm1335231e87.142.2025.05.04.09.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 09:13:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Robert Foss <rfoss@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>,
        Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-usb@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 00/11] Various dt-bindings fixes
Date: Sun,  4 May 2025 19:13:27 +0300
Message-Id: <174637445759.1385605.15383087742490646226.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=6817923b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=AprTATsQUE9CPNEuHX8A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: EVVD8UxN8vfEl6QTRUqGJ_vPgj5M-35f
X-Proofpoint-GUID: EVVD8UxN8vfEl6QTRUqGJ_vPgj5M-35f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MiBTYWx0ZWRfX+Y9qzsnlvjAU
 BUHl/0ZpJpoYZJvRRnOp7ApIylxKmUQ6O65eHPFLpxI5mmF28qILWD8iu/6ZEPumCDImxu85z5v
 PhCP5RPE3YbFRWt7hu9DABeUVaf4ibKKVxGi0uFIg0xajg3KZbOJSTteolCvldJz2IgIxUMEBlq
 uUNuLDDjO6cy0Uzv7L0KsMB+XfOmHa1gueNdROD/FYAhar37jrEryWCtn7I3bYGNYaqsCRwyHw7
 l07bOysSmV0NwwC7HAButk6k2Lsc7pM5YL6uCNtYP9caI755OYjvjo3IRRXcoca5gOTguieEDdg
 IWeYVTPbLgoVekasntCJYrnNIpdROhqkAmX0bp+DTxLl2JUV69ALnpJcJ4Y1vgkDDexUyBnfQ9a
 DLSd7agTzVYjNd13euNYD7TxF7Lom9ypXGunBdEqrOguchrPReXiqfZBayv5o/esBssnH8wV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=790 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040152


On Thu, 06 Mar 2025 19:11:12 +0100, Konrad Dybcio wrote:
> A set of not quite related bindings warnings fixes.
> 
> 

Applied, thanks!

[02/11] dt-bindings: display: msm: sm8350-mdss: Describe the CPU-CFG icc path
        https://gitlab.freedesktop.org/lumag/msm/-/commit/60b8d3a2365a

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

