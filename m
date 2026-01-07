Return-Path: <devicetree+bounces-252333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BBCCFD89A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 436F23002B9F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7432030FC3E;
	Wed,  7 Jan 2026 12:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="at9slPrB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fNy7i86S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A5E30C372
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767787564; cv=none; b=jwCjQl4D8axR/ibjSK5u36fgpaGydnBkq5C6j5wZD9Sial7aimVTPZdxuvgxBDxGPiZi4G0wqvW7thiJJe8Z/D4fSdDIyYqmcJlPXNMvktVgWGfWvd+q+8bHGPSJ5uUiUhfLSxGF4cIptTHctjapvfu4YANKnwMSjxbVcacX5oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767787564; c=relaxed/simple;
	bh=SK1HMlhRdiA20hHT3W7oXbo+85GakTtSzNWoBYWNyGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AHcSaxLkPrrogKACSvMZ01+B/ROVXQBls+5brAmsQ3AAyLtu8sCTPGMff5ahYWHXGJeWW0IYWfGZom6wdbVOWKVIK61IcFHAVRcg9slgpZw5ZoHZMz8sTdYSm7HyeL1gHHk1IggZlZGSXQ9xMfg54ABFu83IQPcBx6Hi38oIQWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=at9slPrB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fNy7i86S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079ehwU2988528
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 12:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jXpo5Dg7VBQka9vAkpK/fsgMzGFmUOfdUx5/PD+SJJw=; b=at9slPrB6UQC8Iyg
	yEkBgioEnmvWdbfCKfZ4YTh1l5f3OfCW7/9Q8PI/d/T6ETktHhYmHEXGkDM3kkyT
	8PeCCtbsQFIlMBlcc0eeEXbJL51Zvqt0Xhn7FBgzi9MhsgIxd/bjJHipsSdWf0nC
	xu/ts1X9A9Bogv1t2Yf815KjQrVu9dQFUoG/JZ5xKfs+PHN803zsHyANb35Sur/i
	BZoGWBPeVjQGhK7AaXQUSlQ5cPc97i7m99u00deEaYNsa6pssPSnDNdTdyAaxO0H
	wJ9JKKLl293kz8tAsvuCDNVBoj/QUa9D/waCaHyYGChdHdXJrBCGs3iFFXV6A5Ij
	lSCBrg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2nrdx0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 12:06:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ffb8ac2cebso1113541cf.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 04:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767787560; x=1768392360; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jXpo5Dg7VBQka9vAkpK/fsgMzGFmUOfdUx5/PD+SJJw=;
        b=fNy7i86SjSqaf6rTnrQ30SQv+FXov7+Rlh+gRAxGGJOPMxaCYmlZoTwblunQqCi3wq
         uf/+ezyG5gca9P7iXavKEFErahK8CwgLJmz4pYKUovUOU5FbYi0v5Y6vKtSNx1It1a+P
         Zc2dsUpBCRYQpClsVBOu8zgM+S2M6hcffUGAF+6m8dFEFA4/ZF8xagW1CBHioVF7pWgx
         2Dy1UkuKRrCig3+igX1ojgKXPfYf5egdxvLp7hqwicruAeLPuiIXYvkhHDQkjJ1cA/8p
         wnMTqCmb+6HIsN6CUDNy2WD7vZDe3jAVbX5SntD/UoNE5uGiWCDJv3DpJhv4W7eUD+II
         n67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767787560; x=1768392360;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jXpo5Dg7VBQka9vAkpK/fsgMzGFmUOfdUx5/PD+SJJw=;
        b=XsCiarMCPjbjoaqDB/rIwedzrh0rMyy6dUGQQQPOgrMxOUU+a/iOYPzzg4FfYnERF2
         eTf4aC7/ERF2AtzQg+shHkZt1E4f5a5vOn2Ix/MPLFUttxpfda4BG2A1rbMiT6WWb5Em
         tF2YKkQWXTHlO9zkVDnM1z0+z0DcUUj8pOWKjf/pXJciay33FRng1aaKgv1xvq3N2alv
         ZZ1pUl86+BsjO4lCaxj2kzx7tj+b6e1P2s5PaKuGZbIw4y2x6l4uzjm7XWgRvur4zZv5
         DsevhHGyEB+HZvjPK50ZmhCdy3YpgK4qWvhuGeNtzKeSYd6BFlVcVqkDgga85Z2C2Z5b
         Vkgg==
X-Forwarded-Encrypted: i=1; AJvYcCWbsPH5z+/Z+Af8q/6+FkaRAKC38pyOI2dj9o8N7uecnRRbgHP7n7MjDBvJLqiv4coQQ9/NtbcxQXnd@vger.kernel.org
X-Gm-Message-State: AOJu0YyOQA5YeTVt/fWEzFMaXKpEm1JhOwiHdwYuTdBajQ2Ev241yKb/
	FHFu6ZAH4hzFywqZHmfMnoFfK5uSYnoScvpQZF+P+Y5AErsdMbmEJOaNpiBuivOE4e6sRvdnul2
	aqfY6ZtZB3YADwaJkIzGJ5LND9QoWUfMIn1cvVtM/3lncf7UAZkZlRZOntf+XYZfN
X-Gm-Gg: AY/fxX4CcSiypo6oiqa33vcIpQWR5MpwwBy+LyfJ09it85/puTnmHvo+Rao7WM4BUG2
	cYsGCBWthRpU6Gnonuqw8QCnzZxTa2UAKcBcfRciCotAsFf6LyFp/fj0bmhD/Dz+xIXtJdsmv+4
	AOKewTdCXD+QcL5HG9c4385IrSUWXNiq2jCwzXKgssuWTxsO0pIfqeVXBi/Tez99tzlgwqb5/b4
	etqukoj2U3QXYUeeRXiT8teyOdALgEbm1suC/7Dj8OcOmmef7wd1AnzsqzN5bBGiDj5juLoUNw4
	obgGQkZQ5CNn8ZtVsA6gU2MJf4EBd/IBKrMER8gg8P3J/D1l/82gINQcLE3yVkA8m7zvS0DtkLU
	r5PKDVgjeemYvx3K1oVXRnwXrLQwMWFm2ema0Bh+ZMZZyIC20yo8cSc6jvsnLnruai0w=
X-Received: by 2002:a05:622a:143:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4ffb49f6dc1mr20250391cf.6.1767787559697;
        Wed, 07 Jan 2026 04:05:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTQzT9CN6wtGfm2PwlCCl6Gn/aZqv69AlP8pq+ElyIV23BjgSIJLrBUuo0uDBcmPXkR/JTIg==
X-Received: by 2002:a05:622a:143:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4ffb49f6dc1mr20249971cf.6.1767787559186;
        Wed, 07 Jan 2026 04:05:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c8f3sm491325766b.16.2026.01.07.04.05.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 04:05:58 -0800 (PST)
Message-ID: <477fda29-7470-47dc-9325-c7226b77cd1e@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 13:05:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
To: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5NCBTYWx0ZWRfX0gejoCwSllmL
 0+FWLqYKCMdsI5JzifHqItSf5TqevMnd3OLtKAMuHkNBKhOsVrXDPs+1gVkeAunklW8i0qIQKiR
 rJSGnGHi48hPiHKbuKKLENXYj1qmrWc9BalqAl9oYYLGUfSzH3dDZ+TAv1icLrJif+30eCUSj2p
 ff/tBKPzctpaPzhHAclwT3q5ko8jOtyzoe8jOb2oPonA0qU6lsCJjeyyGCjxtsXEpv+XxmRJWKS
 NxPuHH4VVHqJRUAB+QBr5wogFVf0SfJfqblr16tloWgjVyYhUE6ZWpVWl0/eHhJRjGttgU82dJ1
 bFJIu5ONoYgJKYA/QRk+x5blw3WJwdfubRcqC16OaHJMfi34hYtppqmwS+5lmz/+uuwRqBfol2s
 81l+LhsC7TVUF9yrqNmYt4tgCdLAjOldCda2Hacnr1EkvTtWLpx5qqaZYTbkFno0yr3HAbSTAt3
 meg147GmPsL9PdSwWWA==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695e4c28 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 9byXaFHCcZgLBp85zNasQL-HQ99WDG2B
X-Proofpoint-ORIG-GUID: 9byXaFHCcZgLBp85zNasQL-HQ99WDG2B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070094

On 1/7/26 9:05 AM, Luca Weiss wrote:
> Add the nodes for the UFS PHY and UFS host controller, along with the
> ICE used for UFS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


