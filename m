Return-Path: <devicetree+bounces-254676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 322D7D1ABB6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54840300DB98
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F326E34FF48;
	Tue, 13 Jan 2026 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IpalTj+j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jFOUc8uW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9090D34E745
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326563; cv=none; b=ma66WHXpWVVKwk2mbaTOkqrO67wGDm75O7zGKtPerMBWVloCkISV5SMJPDZSVUqqBvd0EnXHBonvuvmWQsXQ45FKV3iwpwA9TUMpEQKDz6jTH4k57rJ64q3MIXM+EYD3Rp2CRVPHmLb7DfB4MwPdoZ6rOp1zCHzqU+WVrGMVois=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326563; c=relaxed/simple;
	bh=5VO7o6iYleckltPDwiIP6Y/31QTg6NMKYwDh4KNVGn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NZjNxwFdEvda8cYad81c2C6ROU3pi1Agvhmfli7Tpt07iG98ngZnvQ8kOOdh9iyD2EPCsP50blBp3ITpObNFM80fjmcOG36Lu61+QX3VOdvh51zoHA3KQLsjQyPwUeySEN98X5qNRHUaHJWnEuRqQ7UX0QloDpz6wirNtoMhId8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IpalTj+j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jFOUc8uW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCEOmQ2865836
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:49:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=K5Nxtgtnck4+5o6954LIaJnt
	w5WA1UR6wZbeB3D/ejo=; b=IpalTj+j9tug/d+kjbufBQ7/FNd5uyixjTJdTF9z
	jQIyP2NzI4WpOag+tOjzwdKOlYugI4t5WyG0Ia1RXMFuV5drtnRWg2hRcoUCpeSi
	2OAMZlvUGD/5nCPM7gZj9nm/N3s3PQ6cORTqkq38Ss+g0HgmKLDBRSe0ewr11+dF
	fV1hAD1sKOqx0J1V+j9g3QUbIWf2PkHeijd3RV/BpbXanG29upjQZ5yav40tYn8n
	yxNolB7boC0HO2jmqMhHdT/1GzjH3VfLEKGhAuselusTW1KluvDLHNWS5X4eBIjO
	w0YOQ4PGSiAXyDz/cNJ9vVtZru97eqduevPVrORYLRbGkg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjhafxq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:49:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e19c8558so613758285a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768326561; x=1768931361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K5Nxtgtnck4+5o6954LIaJntw5WA1UR6wZbeB3D/ejo=;
        b=jFOUc8uWdAFrjWB4/2m+kVzw8GT0ZyNXVhswmT+I2Q8tQm8hCy5RfpZer075qjwoNl
         /xTnUXnSGLdp0oFV47D8ZX9A/9VGps9C3kyYmX6CJ/7Lz/KjrTp/RKmKVCgjRWNini+S
         NRcwecJA/eT/u1+p+GgvMgZtdsn27V72gb6ag/w6ZpDWidRiwv8+IFstSdqLpi79Lpmq
         lBCY4qIxU+4hFJ+Fin57GZkpo3WJpu0/y5NwsqqnUX5RK+46RoV69uv1yWxQPcxCUVhi
         oYSZGoItNZImyAzF4ufdigTKO/mJr7mUwJmIwUW6vYbfJmhvMP/xJ6FXjtWlYrMH3bMS
         EhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326561; x=1768931361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K5Nxtgtnck4+5o6954LIaJntw5WA1UR6wZbeB3D/ejo=;
        b=fEiNVBQNip2igqbwYFmlYRwNQVzDGy6rwfvJEhdT6Shrlp+5HljV23X+VxBElDjzlP
         pzmJNvOEU/PjOnGkv+lyZFVIEP3vpntCu9gNueStuWuY6ql9S8RQ+54RzkxmhSCAtw0/
         sAQVOPcaNF3nsVYc0eyK2CTVOO0/3KKldqquaJtikyvNZmY88UTsa+ZmJNqxJY8sBuzp
         n/ZWcPoUNVjX95K5C/+pLINJvsQKzB8LKDWQiHb2zQK9PoVDEGAOkqG7SsX/QPZi2Z7j
         GTocdeOC4PD5oZj250Gixbz/oYJbYvYuDnxS1WSuKkHHwBizvlcqS/CdcsqRPoAw5wFk
         HWQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNaT54pJ1JW+rmASj2Y7FOInv+STyisGdKThAYutt/uxPQ6SVn5f4OqY+SdCHDZQcmu2xaim4CHtES@vger.kernel.org
X-Gm-Message-State: AOJu0YyC1B3Q22MaQ+5Sn2U/IqDSqVE8CE4mHomHifnHOE4CQMcBnI+W
	uFfJlnnqCnnZYwLjPGMwG8EMBEwRvW3yNy65f1aUFliyn3LXkzdNnzyMeiUpW9RZWXMcQE02h+8
	nJOo6HhT+5WzFPd7zuJOM+dUr59o12vs1HqSEudqixZWXTiLIRhG0oVzYrMgQtuLk
X-Gm-Gg: AY/fxX48Pc8Hdb/VHfFlCEsF0MPDUTdsMOvGjhLnizzzhjoMbbbUnOFfZT2TNXcQ/3v
	/fk4mhVoMql1HHxj2MA1YiTtAgrGBHdqomDaU4A3pVAylKdqE3udaNlJ/uT+QkyW+AqVWaWPyef
	2mlgaDhlgqz0J5QHjiw6a0neUzIAcpptLmghp58h2yC3XSeAaM6xcwfzVO68NPDvkH64bXEmOvT
	dB254zTsL+vuD+wlJiTB0vIHLVdM8YdNax9t3SeMa6Q1MiHhd1qkgagRJ9RsmX+RVGHVXVUSwqv
	c0T5afg2kKkeMH0DrUfxWn+oPFfZ6rzhVV7jfqo/sTxAJRUNjFKsZxaeoZrHHPtl8J4/lCyChrb
	cNKQ/X3lWcNl+ywYIqOQMWl3aaSuzWaIx7e9o/2oBp7wMU8pZH4m+Uf0EKJb5zIeYKYczSupmNW
	JGfMxmNbhD7bmnVF81vhwxTPg=
X-Received: by 2002:a05:620a:440e:b0:8c3:7e55:cdd9 with SMTP id af79cd13be357-8c52fbfb4c9mr2452985a.76.1768326560761;
        Tue, 13 Jan 2026 09:49:20 -0800 (PST)
X-Received: by 2002:a05:620a:440e:b0:8c3:7e55:cdd9 with SMTP id af79cd13be357-8c52fbfb4c9mr2449385a.76.1768326560335;
        Tue, 13 Jan 2026 09:49:20 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b732da1e7sm4749494e87.18.2026.01.13.09.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:49:19 -0800 (PST)
Date: Tue, 13 Jan 2026 19:49:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v2 2/2] arm64: dts: qcom: glymur-crd: Enable eDP
 display support
Message-ID: <wrkkviexnm7tk66mjxyw266vwgyntdq2h5vfpn3orwrru6c4sp@cq552sslrlzc>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-crd-add-edp-v2-2-8026af65ecbb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-dts-qcom-glymur-crd-add-edp-v2-2-8026af65ecbb@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE0OCBTYWx0ZWRfX5Mla0zzMHSRH
 0xkoxJBUD6V+MdD1BZqGaNzBkQFFP/pmLaQeALzIJa8kmSId5SOe5MOTcvPpDCx7N9/893EybLZ
 vVbzNAsP1VKET4vSkRe5LZ4jM7IbCGyTTGLF3QAKnhyiuJ2bWz6xr+LiyNWxpvjYz8BgUmVUids
 G3j6nzjAUHdA6DsjyvfzMaDpcF2ryfvYJ0lkrEvzXHjKvSL6AHc66Sw1r90Krzop/yWuX4XF6wP
 TicNpzB9/qQDqwn2EkLwIXFHfV6nlOZYe/9l916fS00lww2VNttP9/S7R6Qvn3Xvqaq6Y74l6/c
 ALP14LAqEu9fGdVAPv6XnxRub8ivWl9k10jsh8ix3LWI2I+lJb8litWrtXYV1/qVTL2zIe55yZt
 4xIvR4K83YspL3GCB//LtqFFzyDcljT9aQjmr2SZfuzSTixKPLqwvp2A1doLEgfNoy4m7zixgI+
 TxSnxrVR/MO2++5Svww==
X-Proofpoint-GUID: c-q1rkAcsWIl7tu0HulRn_d2IBvjqsuZ
X-Proofpoint-ORIG-GUID: c-q1rkAcsWIl7tu0HulRn_d2IBvjqsuZ
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=696685a1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=7exTVeyrrGsJc5ecXJ4A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130148

On Tue, Jan 13, 2026 at 05:00:06PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Enable the MDSS (Mobile Display SubSystem) along with the 3rd
> DisplayPort controller and its PHY in order to bring support
> for the panel on Glymur CRD platform. Also describe the voltage
> regulator needed by the eDP panel.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 71 +++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

