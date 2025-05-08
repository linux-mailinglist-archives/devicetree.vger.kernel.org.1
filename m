Return-Path: <devicetree+bounces-175116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CE1AAFD8A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:45:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D56D39C3BF6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0552750F8;
	Thu,  8 May 2025 14:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ja5X++K1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232F52749EB
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715419; cv=none; b=emWFW1OQhfrXboIfNoSppADC+aHdOfp6wecwNxanNEXk9BxRUAZWmrlxflioO1efRazWlCz/l9hEuJa1QVOEKHXm3EDkxx/xiaK+zvoME+3qFBHZI9UhxqdBHbjZcYSVN7onri2p6+sd1eobMPlu141oRkmQBbI0/4Z4STrY3sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715419; c=relaxed/simple;
	bh=QZiZoalbyPIFmrGB7MjYu/yFu2xYCiPLxNK2Xpyl+GA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pBhUjQ31UbJYV5US1zmIPKpejHUi9sAguogQDKxmqyZHuq7BoRYBtpUNtOWbSEbtK+vZzFOx5uyVXwCf3Bs7OtylnF+aFNMpHU8AH86K4lh39DoJQz5yAw8rXcRMG+AFsDdq9+9p7stxtx3uwBdKy8eGSU/w1QcD0p7UPANohms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ja5X++K1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DSeF1013361
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:43:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ccHcTHH6wwQXQQyGRXU8tZr/iAlIyx7YdnKF7+4xdLY=; b=ja5X++K1RQCV+lEh
	Gv3lIVnhgY7fSsT6FNPMIq+wbHxz2pbcMLboJ4u8AzaKuayp3SOWhES7WAjkWJpB
	NRK+QtXP/AtOaG+KQghJE27reoAUckb9THDbxVtTomfe5K/3vqlnYdzEmI3Ju+Ot
	CkdSH31AoraWSjkylBdrxcFxS+RsKqNdiL8BiiIhjDwkhJWiSden0CYVFS4y66oN
	j5qDdmHAf92rrjKO6bvuAELZKMetZl+ZkBlNS4IufQYpXYRAZx1aNYs10nIZwZfT
	NwoIbr4YV8XCEatPQFu1WPf6aPMVJbb+BzeBHPy0q1KEvaf++Yu5/4CPyCFaOrrr
	ss2wcA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpmhmxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:43:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54be4b03aso22443685a.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715416; x=1747320216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ccHcTHH6wwQXQQyGRXU8tZr/iAlIyx7YdnKF7+4xdLY=;
        b=brutNlLhlEdI2Hn6V/vRGNWUsxoeW+xTNoDzWkaDzSsIxlVZFikhfVUFBICa1j6JNE
         K5m6r9VCcT6VTxyqW4Fw9uMyckfTzBBdHmBz0idRb+9mf09ke5z7ZoZYm8eHA7mR5SSz
         aot9nDEURyMoCdEeViSgRg1/n7HAU741iW71FLTnB5nKay9DFpB30z9vnjzAWXKE44+F
         snnx4cSuqN7MtWFaigT6E8Gh9WGvVlESxCEPNedj3MI7op22Smho86ADHzkWuOyOzwx7
         fbpXXOL5gHNFyDQOjnKfvWKfRRDJUyPb9RJ2ulCeD32yc7j3TwsE1PqAs8t/BbvnWebH
         i4mw==
X-Forwarded-Encrypted: i=1; AJvYcCU/eyrRrpYS+k4J3Zw2K+1Y0NmLYYhXFfKaU7fPf8BxuDEfHLml7Zu5OxBHeuSPFrEV0GWZk/ABsEmb@vger.kernel.org
X-Gm-Message-State: AOJu0YzB2be9WHG0s1O67ZY5cZjPdDmiXjOAhIPEk7i4PH7pLKYZfDMB
	/syB7uQlx+ySA6fWa5swvSRQ9J5RSsJrgDD6ozE11q96CvH2HtbCIP/xp2DJCyBVbQ2FLCabq7n
	H/BSB59SRlasJovTFrEJLwo0+Co15V3UpB70Vw2v7i79gHPcmREJ1v3nJM8Rr
X-Gm-Gg: ASbGncs5lJ6IromVYNGO1ou16xdkIQQqcr/tVryALl38+eFS0IyybLkFamv5nKXWI9l
	/ncmw4dR5u9CFyk2Juaa9NcSJVUdkWe5DHtAUvTdjUmN6wOGBG6kUiHpsX3Nu38XpQhsk9HTSFd
	l/xvXAKLGYzxT/SCt/Hbi0lAwx0qlIPrqDsghHx7YFcitdDv2Tdg5ch237f4DRHUL3MU/ao87+k
	zRBwhJREu/PEe8SOmQvz59sbrj6+DjHxTbWLav1Pw8lNgGXQcbOsuTrQJE5B+6pA2TRJEV1q3DM
	tiVqGV/Y8i+4VrDR+obfxSxnDEyrQYVv6zI+BWWRqqXXHThvitQnzoumcx+a0YQTHlk=
X-Received: by 2002:a05:620a:1793:b0:7c0:b81f:7af9 with SMTP id af79cd13be357-7caf73a26f5mr453367885a.6.1746715415860;
        Thu, 08 May 2025 07:43:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGZx8hwuxykMt2kAYXqKEJRioot+1Hdnl4uKrWI1L1nMr/jVge9mVrLmUsf/5ZZ75qKvBAWA==
X-Received: by 2002:a05:620a:1793:b0:7c0:b81f:7af9 with SMTP id af79cd13be357-7caf73a26f5mr453365085a.6.1746715415324;
        Thu, 08 May 2025 07:43:35 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fa77c04411sm11181106a12.67.2025.05.08.07.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:43:34 -0700 (PDT)
Message-ID: <1df330ef-4de4-4641-a42a-532b05bbd98e@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:43:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcs615-ride: enable remoteprocs
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250507-add_qcs615_remoteproc_support-v2-0-52ac6cb43a39@quicinc.com>
 <20250507-add_qcs615_remoteproc_support-v2-6-52ac6cb43a39@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250507-add_qcs615_remoteproc_support-v2-6-52ac6cb43a39@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TpjmhCXh c=1 sm=1 tr=0 ts=681cc319 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=32Q6MQ-mccEAdxySR7UA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: LCGnlI5fPv-OJgyRoxaxr4MwusefmEgz
X-Proofpoint-GUID: LCGnlI5fPv-OJgyRoxaxr4MwusefmEgz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNiBTYWx0ZWRfX7+kBnkaGQWRx
 AIdGw84GbWu/qVF4922N3mX0Qiz1YHOiBkMsllFbU3Mvp83UDJNQJZAdVAh9s87M86iZ+05zSz6
 /+foHf/V3kN8Nc9Z3uoB7fCIRwv0/R3AWK5pWWpkXLAC0rynSdcPgKi5UdIwT0E8VfBs2sk9KKK
 7d2bjG4bUyrDJzi/pnJcQSTaSxK2a9yp+3N5rZa418oaO2WY7xLyYdaxTWQsuqr/egY205iTjNs
 c6kzfqW/2uF54qtt5oYPAp/gGcNQVh3MWvp+X2hAWiWH44uVv/Lb2keLshYo7t8ytlkPZXPgLk/
 O9VwLPi8G1mPAneS2qXeS+zErQd1bKYsdAMNqYfRn+Pu3wUmr3sCzwQxLf6Op6fHVERSfOs+Udg
 uRz3oIj0OCECgiPI7Fs/ADLQe8VETqU7FC5gh/5eclTIs74+qlgwEaKSSG37k8EYIoaQmYbu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 adultscore=0 malwarescore=0 mlxlogscore=692 spamscore=0
 impostorscore=0 mlxscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080126

On 5/7/25 12:26 PM, Lijuan Gao wrote:
> Enable all remoteproc nodes on the qcs615-ride board and point to the
> appropriate firmware files to allow proper functioning of the remote
> processors.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---


Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


