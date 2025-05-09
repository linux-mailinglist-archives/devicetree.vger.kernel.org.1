Return-Path: <devicetree+bounces-175585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 377F6AB1339
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFD131BC6B71
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 12:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280E7290BAA;
	Fri,  9 May 2025 12:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J+PZEqEd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB1528FA88
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 12:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746793405; cv=none; b=iuuU5e/0Qqw8lRuQm1arhJE/h8Z5NfJJNuz9nmkPiJGkeEpajHKFLQWdUVRKYTkUTc/i3CI2wm1CyjkqG5YPwqR7kblLbhdfKKSxfj5TmsvpY8QoItxJH2eDrzWyRQjkuHAeLH1BJDEjRTxRvEE689rOll0aBArBarmttmItWQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746793405; c=relaxed/simple;
	bh=BPTqbhqBNKF7eXF603y1EFlEzMSdfVj/K5RsaXM8QAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KUSa/jL507Y8M0IIkxSyn2mYkzrHv6QMqAgJ7noLerlgOjYLqPIv2BSMlLWmWysRphyp9bTtXRmEUoXQoMrKP5fetOxCLlOzvDSIq+JrTqaiv8ipehG9ce8IZ7y48N2ASVpqqhamFberQKPCuyuNpAS5/eukzayxDwGNGLUuV40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J+PZEqEd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549BOjjJ011683
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 12:23:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1f/JYxetqb8RgZlUy4cv59FbC1e8F5GR8Vi4igmQdNk=; b=J+PZEqEd9BepWbVD
	iex2vj5XBGALhIf/4pMYKcDfLKs+p4pNKeZ9JDUxf5DFigiVGR1+E4jh4qRg6nCf
	HGjI11DGa0llDaZesu2jl7sHJaPzvYqyT+8NjYbclu2MQ80pVRQoI4yWp6tLq+rz
	n5+MeI4ipNvNsSuBf/KJnqb5qPcVOgEenfYOtWS8055VIz5hPju1xBtJBPknQueT
	t9uMcYjLm7lLgR9CdFEFt3HY2OQV+EWE31Tb1Uy7hGIacvDmmZ/vVKGOBXlSR9U5
	sW5ax9HCPx7tY+scTHuA8QU/H1A6qC2xwiabR9og9cW25U2F7Fwd/0vl4qr5Zran
	aCPG2g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpmmmen-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 12:23:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f5402ec95dso1408476d6.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 05:23:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746793400; x=1747398200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1f/JYxetqb8RgZlUy4cv59FbC1e8F5GR8Vi4igmQdNk=;
        b=lpZ4/gLC6kIDoJCK5yx/0lKffntFCr12PBvA8us+0zquwYUEIRKBN5u7LFd/Kmt7BQ
         qkzhIq1tKxKxjKzHsxxhdIxLxTwsGCJvwikT/UT8mgyPHnXFhTQRxzYF+6Ergfpc8vYj
         LXtf+D1uaRxLNV+BaBsfE/tiZ7O3KsKImkCllsFq8gbHWqEpKZPX3fkUmpsnRc184Dom
         kfgSvlv4qCcLmMZ/J6nZu3N6J/XwkKfwRP0oo1TuAoVtjfGP8ojdepjRly7eLpY48ddF
         2BDE23+38/Xn3qvL14PYN6ixZxOprMRU2Eefb9ry9fD7wk1T4YlDgrkt2FPpGi4bTYDn
         RS0w==
X-Forwarded-Encrypted: i=1; AJvYcCWz1TJBWQJLtjloBUzQhcX6lkzMpg3Dmiuodwa0iYxv9n0TQOzBn489ep8nPHel9QYryzm4AJHk5UiI@vger.kernel.org
X-Gm-Message-State: AOJu0YwHyBdQUYoGqqYq6Ik2ec36ps9ZxPX12selGGHUyOhzlhENqtYm
	bU3Qk815ugJInCjepLYHduMqolU4NrE+5cgL6VQ/dvbPIMn5bNkFIWJaopfmQEXqFfbxk+H3KKA
	OA7Z5dTScq6D4iZjwBOEmhcFkwTf1zl6PMIfYaeqWMEezOouEl/J+BAE6MwRq
X-Gm-Gg: ASbGncveUAMyPzybgdSMk0ARe7jTfZH1Uu6b7DAh7VrizPbnSe5R7laDCIVK1y1IKzv
	vIw+lo4IhvA1GliWNFoVChv4ue259aouECPyA3LVL78+KZpP1MTir71yAXBOVSqndE9aJ/13ajX
	hXNowWgilp4/44BeUmUboFCKvYP/Qghk+9BzL+KUeDz50s1lcm0alFL0i8XYsnsZ2E7ZAc2wk+r
	Mg81k1B48X/U3yH6ds8SqP9drsqhwxz9nPJEPSwUZ8xxOK3XbYkRNk+EYDDPSUkdqguM8IXJJsM
	PUE/2r32LkSgLUkowdCqzFTscKj4F73xhZd4BnRfk5/QygWefQujWswssy4PWaZLFxE=
X-Received: by 2002:a05:6214:5197:b0:6e4:4034:5ae8 with SMTP id 6a1803df08f44-6f6e47bc895mr17154206d6.5.1746793399920;
        Fri, 09 May 2025 05:23:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHb7jn/fkRrS+0pNmBt25lIF4IJKWPlbMbX3OP46mB2qIDzck4hs/EEPTKkaXlUd5qrFgS1nA==
X-Received: by 2002:a05:6214:5197:b0:6e4:4034:5ae8 with SMTP id 6a1803df08f44-6f6e47bc895mr17154106d6.5.1746793399605;
        Fri, 09 May 2025 05:23:19 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9d700579sm1336922a12.51.2025.05.09.05.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 05:23:19 -0700 (PDT)
Message-ID: <0ebf9eb5-6906-47af-a4f2-99a4587150be@oss.qualcomm.com>
Date: Fri, 9 May 2025 14:23:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-*: Drop useless DP3
 compatible override
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
        Sebastian Reichel
 <sre@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <quic_kdybcio@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250509-x1e80100-dts-drop-useless-dp-compatible-override-v2-1-126db05cb70a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250509-x1e80100-dts-drop-useless-dp-compatible-override-v2-1-126db05cb70a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TpjmhCXh c=1 sm=1 tr=0 ts=681df3b9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=oFAjQAwgCFvTbsaC9pkA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MCESAzyZmTfN_TVBf1DMMJO2g6S2ny0J
X-Proofpoint-GUID: MCESAzyZmTfN_TVBf1DMMJO2g6S2ny0J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDEyMCBTYWx0ZWRfX7s1IG87rxgAf
 rwNDCevAem9wZ6xcvMrkxf1uZwYPNU7fH3JOEqQO1BkG11qWc1si+ZAhsrS97+LGqPTSv1Ma/yR
 EKeE0HpsKBJUx8rU3PlGGI0M7NvoMfpjb3KvGxityAaCgZiO5UAAy4tNv3kXJjXULXuYU89kpua
 Xr2+bbcy24F8OoURJOhUT3S/dP/w9plQ/JFi2iKUlEHxrQLN4itC92QPVa79pP4KCvcKrs+vp7W
 sNIsxbiFO3VDmGtjCcDnMrJsPOd8Npz9E+/L/B/Mna0sMBkTtanGsQhJOPZtwrwY01ACR5ZvQZg
 W0YJelXebaJHS1wNPoqk84bXPIBhBN+k7KaVUr6Sx7tyLHr1dURsD8ge6EhYBHuhV3gXrs+shsZ
 6g0b5Cu60FS/nZopZwun6k+rvbWYgLRmdUaPBtFCgi3XN82wr4WcQS0KeLABVM/jWYcD8MoW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_05,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 adultscore=0 malwarescore=0 mlxlogscore=792 spamscore=0
 impostorscore=0 mlxscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090120

On 5/9/25 9:08 AM, Abel Vesa wrote:
> Back when display support was added initially to CRD, and we used to have
> two separate compatibles for eDP and DP, it was supposed to override the
> DP compatible with the eDP one in the board specific devicetree. Since
> then, the DP driver has been reworked to figure out the eDP/DP at runtime
> while only DP compatible remained in the end.
> 
> Even though the override does nothing basically, drop it to avoid
> further confusion. Drop it from all X Elite based platforms.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

