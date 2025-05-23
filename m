Return-Path: <devicetree+bounces-180098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B8BAC2978
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8DC9C1BC467C
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9929C29ACC0;
	Fri, 23 May 2025 18:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yg81W+1e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6A629995C
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024299; cv=none; b=Ug9Q4Maqp8UY1KAnGSmOgH+i3ZV8ewkDdJ3hXff2ypn0ylEAnW/qgyGtmOnAjnRNGyhjCpGIuskwSyzAs2Q7sxZN0HZzkook+CzGnvUi2lDY/O1DXzlhbxjBLBeBijDQJAtEG1YGG6Q0EUViJN2oq4kU2E936S2C+4epUY6EHX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024299; c=relaxed/simple;
	bh=BgjAMer4sBy25cvBdt4yVPcZycKJiNEnV1nfqRFJobs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hag+6QEKRBOV4oenuJHeKW1JXDQ9/G7FEGz+gTmw2CrcwmVL9aLqmV99iyJ1Kr1FXXVSaDmAv9UXIhfubQP2/M+9IdwSlyy7Br+lBjPjJiqRCm09u3YDcoU05TrPJ6jEu2UChgCjzxdOSB53013OR/Nh01DTUv2Wz1sWDudFubg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yg81W+1e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NC29dm024826
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V9nZ5LduKS47wlhyfgMEb7Qw
	5TuFpQZshDkakAX9jxE=; b=Yg81W+1eHFyyyKVUaS/d0IQRon4mr528HeaTbRO/
	ngncNDjc0ngAZVhZv5a39YpecHcUcJzy0zLdObyJm5hFiokCBP156uZtK5hxYwzY
	4AQILCwINFdepvbnoTYxMMSy17IfxxEWHrBXLjFM6Vr+Vbs58GdUVC8Gx0bac17W
	i7AdcKz6seqnVH0m06Y/5xjjhEHQLHYG15wiO5TQD2ew4LZ7i1l+ofbU06XvZUqJ
	KSw/u1vp1nw/sF/cCbnQpXmTFcX4UqTW4XuKF5J8KhGfD0KNwiJ4QYaMYgmeqjO/
	D6zXDR6vc7wx9JumFecsWvH8Rwb3Y8jSdyHha9YjXSQE+g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf52stb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:18:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54e7922a1so20544785a.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:18:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748024296; x=1748629096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9nZ5LduKS47wlhyfgMEb7Qw5TuFpQZshDkakAX9jxE=;
        b=SXF2FM0HIbWN1xHqVAwgIqyzc0N+KMjePdJI39u2e51sQEavab5kf9Ljsef3FcyLDq
         gTPoNNP/0w3udISzCxlfJMu7YPcYg3e5ANx7J46dwtVsr3DLuDOpybbVwlvtCN9sp8Zm
         0XcJwuS6OZI2P1Y8Url9v6S2zKpkmkDe94GRsDD6vLq/H3Bkn9OxtHCmKUQuxx76G23y
         pgl1Mo07vTXw3hQgulFn4J3+hZPc38Hvl9JT9/Y47pc1V5777zESvGBLv9lzuf3m1+Ch
         Eft3YpmY64AiOYVhwpTB4jv0GFSPSP4Dpg9b956QHpq6sIcncGU0CiUJwv7OMimeenw8
         JJjA==
X-Forwarded-Encrypted: i=1; AJvYcCVP81YBqnCWlKzTJQ/afBhzihL5o5oE6W1z1eIka32+0c9aZulEJnSdSutlDP3LAJ3j/QsocwH/fJzg@vger.kernel.org
X-Gm-Message-State: AOJu0YzNoUv63sCPs9bgdbcJpFU54iPbd/r1a94jjOjhfxxFW61JuqFq
	F5vfgnZfXRlqe83pwTCu5lemjxI7OOJErtVWnkULt9UgcDf/h5BmOdkcm4ADh8Np8190Uo381ZJ
	eCM7kjVaqvPQpwi2I4fKYX/RxpZ3GBVGAFIxxVlcyTKeyuxyy1F1PCHZolkvKQ7wI
X-Gm-Gg: ASbGnctjlH6jXOhVWbViQx1nAmD7IEcNkEz0WIebmqcxqrXFckVH/83Uls1FsnY6L+D
	rA22Gj+LYpb7hDViiTsVbS96rMUROyFbuYJ5F0bpL6ezAaQ00pu2AUcBOdTb0CxoSP+/XnB+P1E
	soctr2H2Hsy2bWdIMFe2iIHRtUrAzMOagoC2Od6QWtqWFXedGcMVX5hnmNwkqi7dtYumXkOVpUJ
	i37D1WkT5KlUx3IeoXBfuyI6yYOeT9oSiuA6od29iQaZ1EPPx0PGuWwN3TZN/FNQFmj00x+q6El
	gAmrrJjAONnChpm3xsnZcUHKbqiW47ii0aJGUaUcbgz8pvR2dkNp+u8aUiHc2AHAx/5eXGtK96g
	=
X-Received: by 2002:a05:620a:3941:b0:7c7:827b:46bf with SMTP id af79cd13be357-7ceecc2c915mr28251785a.39.1748024296140;
        Fri, 23 May 2025 11:18:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBS9Ctk+KlpdqLn+ytgHW8TpGchLngqgx0WbnAgQSn8atp2AfEvN0QF84rqFI/UCbAfB1ioA==
X-Received: by 2002:a05:620a:3941:b0:7c7:827b:46bf with SMTP id af79cd13be357-7ceecc2c915mr28247285a.39.1748024295713;
        Fri, 23 May 2025 11:18:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e702f462sm3976032e87.209.2025.05.23.11.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 11:18:14 -0700 (PDT)
Date: Fri, 23 May 2025 21:18:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 03/10] arm64: dts: qcom: sc7180: Expand IMEM region
Message-ID: <5yseir6wftotl6gl4mfovfv4hoiurs776a3hkvf7uxt2gjvonz@ztqmyuw65ycs>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-3-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-3-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-GUID: hevMAP_MvWKFVNKrQALJTApub52aZlEY
X-Proofpoint-ORIG-GUID: hevMAP_MvWKFVNKrQALJTApub52aZlEY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2NiBTYWx0ZWRfX5r8zKZv8AU8J
 qJbNxDg5H/+d87BTtBOYxzI4wfwqoKfDFxcQBGvpD3Zr4xEp5eWYKDsmD2NUKMegwnkR0XjBTth
 Np6f9pN9KW4y5UOxtZpGMVQtZpa6mYKy7CK91eTrgQN7K+Vz+eZ19+ienzCEltpVTst56x6QjQA
 BpKRQKhfmdUWNvkKt69m3VAytBm6dFHhDFGilUWTYQ+nCqszlFzhVMjCRYg7Z5eu4/JUqbLB0Zu
 g87r54IfLVjTgapaJwtQVZFLRyEMW2O7AiN+433xRTJYZh42qlSv8Esypzxl9kNVn4GnJonZ8Nu
 B1dzBIUPUgm+rWs2Ax1HXnhkZLDllKIZSJFk4oIegQiwy4pA5M5J0OXe/yxJIz+9Sfasi8/QItZ
 QLLN21oh7xau4Cv3IFAOKek8++jU0v/oLWkihDb9E/ZlwaRX5EUN3a4o9OdAhbHqCs/DDdXm
X-Authority-Analysis: v=2.4 cv=R7UDGcRX c=1 sm=1 tr=0 ts=6830bbe8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=3npRUmwy8-u2fLNlmfkA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=520 priorityscore=1501 spamscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230166

On Fri, May 23, 2025 at 01:18:18AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> We need more than what is currently described, expand the region to its
> actual boundaries.
> 
> Fixes: ede638c42c82 ("arm64: dts: qcom: sc7180: Add IMEM and pil info regions")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

