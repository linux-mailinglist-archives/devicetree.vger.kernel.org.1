Return-Path: <devicetree+bounces-220685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B58CB995E5
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B8F71888194
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD2C2DC77B;
	Wed, 24 Sep 2025 10:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WBAbfrnd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B42DA775
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758708622; cv=none; b=apQuRKqX2HddRaalYh19n3PN4OdDACJg3JHlWcAi7gWxtwR6idDTcrLezRyCSjmXU3d0g7gnxBqPg9uiUW4GPsGk/t6Y8xTlJbs6f9tdFKFtXkCp5C02YNToe5sNK77WudjGAA3PwpeB13krhfeFKU90jUmeacNBUkou1kjzRTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758708622; c=relaxed/simple;
	bh=LfLQnQz1iqoAKVGoTv2Sh/lnQ6ZI88pIge7XwgLEMFg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SkPK9txjASg9WElNKEcj3vDUGzB+NOqXjNByzET1UbVhqxuwkBs5iDlzYlpdX82Jo3XRdzpIA31TT/W33I6qFd63WaKu7rr+gls9gWU27eUAVxNVE3/H3EDGDWsIGHHog4I13U8lwQ+bU7vhQl4acgzuthac3BrkJGkX9M0pi3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WBAbfrnd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4iIQv019934
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YoIdzOROHIhVWzo1GAX0DgD5w+s+U15l/MAF+x1560I=; b=WBAbfrndT8Te4p6v
	l2Bk6k/oKlHq9CiJkOMQbqyYXBAByz5m268wZcdafO63LJXRod7OwJnIuK50Ix3p
	RoZKJ1whFLJh//H1s0X62p2kkPhVYUMBzheuDnKgivyELGGUZ6AwKINhCM8aqmij
	FTEG1e9EJ/EaZcqpOdRPkDVwUgy10kn6Qje1eBmX9TXBwVrqkhrMIpAd/Pn3H9t2
	PyfMOukzWuwsJVfat4g3lWWYVNNYw69//qznxgw5ps7CqkFHouTvLZ9b8EN3ugTr
	N0MvCuy2Hv+k9Vbo5pnAugRXi5uBwtnp0tUNv4k91EXQm5C03W/X1cDnBbguU1jy
	8IgMtA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdw39f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:10:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-84f7066c1a3so73769785a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:10:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758708614; x=1759313414;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YoIdzOROHIhVWzo1GAX0DgD5w+s+U15l/MAF+x1560I=;
        b=HfKL4SH1Tost8AojljBepXncervZ5FLDRIIlKe7PX5rO9ESKveTXwY+sT5eEz053Ug
         KPsgjHG2amqck0hd5LAo4PXfys4qtkFvQc4YZoHtsPq4youTBgZYaAU6ddrlyUvHxukN
         4b6mnZ7niU6NmPsIrbw/zUircRuYlhQhllW3mtJpDKooWOn5ayULg0HS+NZh+s4xt+ZV
         6wBMiKFeDH9GloloZEr8T2Q4Jfbndwq6NYTsnxlQqOQshnoK7PEg7xIWzbnxuIhqutcK
         FZRWt6KtJ1Z+OTwjR/BqPjsGp/KZdI6DS4DoynpMahmHRWfKSf5qYU/4e8QoytOZQovV
         /r/A==
X-Forwarded-Encrypted: i=1; AJvYcCX8eEzUUxhZIokpJ2ltlOo4C4HjgoRBqko4Z57rCzyfnMLO4JWvIW2qfTa2CNVbyNhtmEy6r0YEOai8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3iMpIh7OXEmiYVsU5x5oNf07RIZKZg5gdpSHUQg/hPTWYfXFP
	7o8v29w+0kV2Um0yzfv0JvxE5zVI0kC4WwQlpaj8zAmJbdcFjZUW2s7me62V7QvnP986/I/vPZZ
	u37KpyDzsQBf4zSDeVDGd8KoV2nyQ70eAUZ01cUdx/QTTXBT+w8JmbfIVBL74JZXV
X-Gm-Gg: ASbGnctk0FEjgTPFij0PcAFpJ9tylzUqHbHGenSSLl+ycY4unAS1J92dKetoExiReyj
	g9Bh/f030ZDjBedlwW8ClfKyfyvgiOnYwR217RNVhX8Isg79sU5GrMQfGnyjexkBcJWbrhzyJpQ
	iuhrQRrqNf27PByLL6JekF3JKU5yuBwR7o3UsFSPhcVNt04+VwxTuLVWbTb/T0wF+/i1Lq43Z05
	TdIBxPP0Lq4iPbqJLLSYOF6FxKocOzGy7Dvqrfiq5zUt3XE7EmF5iek+sVo3SItMQPnxvwisqTQ
	SoAs9U56gMVL6v+9cHdSaxgzGm0rUJs5sS6kIOK40urkfCDDp1hYsWAu3s7ZE4sswwKpOSh0PPz
	60OPSRIIcsJHULgHKeZyE8w==
X-Received: by 2002:ad4:5f0c:0:b0:794:3dd3:a98f with SMTP id 6a1803df08f44-7e6fe4d5873mr46466086d6.1.1758708614527;
        Wed, 24 Sep 2025 03:10:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEer+yy8B4QW1rxsSNv+lBdFXhQg8TVeqGVwOyikhVt6nHECKjEa80EcAHvybE3COIE+zeLA==
X-Received: by 2002:ad4:5f0c:0:b0:794:3dd3:a98f with SMTP id 6a1803df08f44-7e6fe4d5873mr46465836d6.1.1758708613930;
        Wed, 24 Sep 2025 03:10:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa5f42d3csm12390185a12.51.2025.09.24.03.10.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 03:10:13 -0700 (PDT)
Message-ID: <b17e95af-0fd4-450a-85ce-5e3ba1e9891b@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 12:10:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: rename qcs8300 to monaco
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
 <20250923-rename-dts-v1-1-21888b68c781@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250923-rename-dts-v1-1-21888b68c781@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pu2_uzgaTLpcLEyUusCvlCtSKo7QO1J8
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d3c388 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2a2SA1_c7obCbjsyrsMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: pu2_uzgaTLpcLEyUusCvlCtSKo7QO1J8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX1Qi2wN1BCVgm
 8XfN2xpNAz+S1WBtSvHM7yOsrZa4PN5Z/QNClTf0uYWaXGhNg+7yuM8PgW1Av1sbZENoU5dWfcb
 c5GThKoRmSod4DVB8h9RnrdoNvaRzBKZ3mmTu3imYqNpyXBQL3vRge+Oo30gDRTvB69TkGZ7u9k
 PHoBl7lbR01IGCoggZdRGHMtHOV41TGgZmhd3zEhlJWzTJi+QvDdtUbAqnOHBA2cie86q1z8/0K
 IeTXKoX4Gn1vTvUCkogwwlQ1Hwq3wu9mgsNCYyeDleBb4mkelhYS49OILygh2EoL1Ed8A3rwaL/
 MEd/U+K80hYatbi5S7VQepryBQsjmBLUD5xgqwvqwi9phHvorr3nf8+J6CpXUOnvFGrXjvLzqxA
 gy6g6na6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On 9/23/25 1:01 PM, Dmitry Baryshkov wrote:
> The QCS8300 and QCS8275 are two variants of the same die with no
> difference visible to the Linux kernel, which are collectively named as
> 'monaco'. Rather than trying to using the name, which is not always
> relevant, follow the example of 'lemans' and rename qcs8300.dtsi to
> monaco.dtsi (and qcs8300-pmics.dtsi to monaco-pmics.dtsi).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

