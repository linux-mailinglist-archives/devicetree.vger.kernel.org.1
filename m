Return-Path: <devicetree+bounces-254577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E87FD19754
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90BEF30369B8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E886F288522;
	Tue, 13 Jan 2026 14:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HVwp3T1+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UApvqlWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E1926F2A0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768314497; cv=none; b=lyk0PwiDMkqjYGsJh0AFyPuMWFD56H85NecRgQMhndrdqRNJS+c8ib3GWx9VwU9NN86vZogtoqlb2OafZsLXxGjGSGjPDR5WbMuE59qo3snAbRHgNVY1A0Q2U/7r0Iy/WGtyZsIirXoSSW5VUujmFnu9C65weghTgQJdVyyosIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768314497; c=relaxed/simple;
	bh=GEyvcU7FVWlyZol+s2Qczz4gRoztqnhhOrtCtAVsLOY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hacmTOw/zI1XxxQXZvb1vACoYY84gfHdv4u9WCJApe7P2BEcbNwYchTjnG+8uTVl9y4k0oksDI+vRx5+ZMQ1/42d4lQNxRrVgIuOmkSWdxfWLWFCjl0I852wXQsSeSBFEKu49vfOv7BJo83UmZQ9YyzmMtUPRG/LWMS29KjkOtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HVwp3T1+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UApvqlWN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DEGx4L564469
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZxqRB5HlWu5i21n6GBEu5rKuss69ZplhsDQf9AUqOAk=; b=HVwp3T1+/inN6BCz
	NWUQsSV3hwkOFUBII21ziJt1ElWKOqr4jhc3J+xyDv8PQ4QyntunGwkwBEFycXAD
	yBIpgkv1JpXwUlPLFLr7BzyQWxVVtcEQHgyRh8dSM/PL5MDaf4XPwU90CdJ6d2UC
	UgsU5flJ/56SlDpgrX9yjJySo8vL8KhK5ScP+PH+FrA5eABEaPvv58kvmB+yzDRk
	bfz8RLueBchiGRGJTNMjbf+wWKnHFSLXSL+eESk8//QKZtcs7tEWcKq5RO+KQQyl
	Lf7RydPuKsSdQMMFN8shOLjlp3C55Zcab5wGQkMHbT7oOBJYMOx3YZqU0hebQbBS
	IJbXKQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng2c1m4q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:28:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e518fb75so118280985a.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768314495; x=1768919295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZxqRB5HlWu5i21n6GBEu5rKuss69ZplhsDQf9AUqOAk=;
        b=UApvqlWNOSvq4ROriQQha36tC8HzEdn6pfVP65CqXm8D1o6PkTjaUrBbjrJemsb7cY
         1JIor5BLAhtup6srfbPoe2QoF/8bE0u96s03WX1R0TbEnXbjv/FvLli6Bzpf3XLJqQ88
         fM/7uTK7tgxw4MM5WccjdcLctDni+NgPMr6uOtuZqzLK09WiHV5zgbkARwkc7IiKr5LZ
         tdyUMpQAQ/4U/frO4i1TxXI1g+BV7JP5f1disqsKui+dERR+Bmo1SZblr+VQkRcI4Jky
         9A4AkEN3i3b08JFyrUTorrQhjD5X83MBiN7+yVzMCs6hNOLfKkO9AFZ3kF+OH4iwP/cf
         jv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768314495; x=1768919295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxqRB5HlWu5i21n6GBEu5rKuss69ZplhsDQf9AUqOAk=;
        b=t8JvQLyHRRSFu1abM4tPmFOSsnJfPnFM3oubqziB9NMHB8nsiXwWPIbUP/BRxFl1o6
         2YlZCc4rZ5keGxdXSsbvhpGa+BEjKoAtybeN2MPBtSUMoDauI6H1GQhxbjwDWaWSXnS/
         9yrWGOwqVHrwgjAs6kBBr7xXwToa3l1FMjLAM+M9g+vNM+6pmSY7Q8MbIz2mMp/Lk6wm
         /NsspZsuTpX6lZDPO7l7PFippxUqLoHrYygLCOthtbevUZBMEc0qRoK0txyFwNXZ1OgZ
         w4wgv4V3HM/x2L0O0jEL9klNkiexCONkywFb8nQUYz5TGr6g6dWHaysN87wg+LQ+DMwm
         sY7g==
X-Forwarded-Encrypted: i=1; AJvYcCUrYhdOplR6SaPOKiJj0lKNKQV5QCIpn30tLL0ytTMt87QwFV0EtL8eXYlK2LAWgHJwEkgvJbn/3/EE@vger.kernel.org
X-Gm-Message-State: AOJu0YwJdtirJLS1ytcLZk3rHt5Du20IvR95WS29u+fqLjxlSnamiueN
	eqwoXZnWc1T/M0RtWVx+Bw70ym/03YcalKVUESzEs65VolnV4TJFflwR3bIAc6wgwzw7hX3uMZn
	Ovyn+pRkj8w8sV9tiVyDRpplmYGVDJXJ9rLAXjH9x+3FNc/i3+PZAGHauF2XQAdc0
X-Gm-Gg: AY/fxX4Kd5eeb6a9sUlSNgsPI1F+onBZdxi6S2s9MQ5I/OT+JJ/4czprpiJ6awMBh0I
	g2o6SbQzojclBNSdUDTWdDakQOEb3DECzHxPt2gfe0EHt5KwQZTpLKOxAaglCWWbu2Aib0tnh7z
	yE4ENvZ1yOXtw59Gbopdca4Gdmzb3yvOdQy1kdqJRUl2O5QNgEYH2DAgqCCsKzjiwFlk81yW8N4
	G51FBNwfVImEohgrMjryUQIZK0amdke++JOpnnkarUMsybH7re+jruWki07dA/846nB6aW3jC0V
	n2enTTwye/p7/FqV/xwKOJcnMeOScFlJhSRh3eiAYZ7gU0S5MLu/aQ9yoDTEqeQ5mkLw+hrCEwJ
	Lzl1admw1zsj0v4zC57YZTTsvFbo0YRvxMENsURVI33EaijXKmRkC8d0RhoY7+uDucwY=
X-Received: by 2002:a05:620a:4107:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c38937c1bcmr2193464285a.2.1768314494860;
        Tue, 13 Jan 2026 06:28:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEdjim0AtdFV39wYUK2oZNSJKlSOGQXB3wsnGeW8nI6+rx4ttssUu3p3UZw3cHWQcxqBahbhw==
X-Received: by 2002:a05:620a:4107:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c38937c1bcmr2193460385a.2.1768314494383;
        Tue, 13 Jan 2026 06:28:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a563f73sm2305390866b.61.2026.01.13.06.28.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:28:13 -0800 (PST)
Message-ID: <14283f23-31cc-4bf8-9762-f0348c30618d@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:28:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/9] remoteproc: qcom_q6v5_wcss: add native ipq9574
 support
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>, andersson@kernel.org,
        krzk+dt@kernel.org, mturquette@baylibre.com,
        linux-remoteproc@vger.kernel.org
Cc: mathieu.poirier@linaro.org, robh@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, sboyd@kernel.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyMSBTYWx0ZWRfX2DynggrvO+Pt
 6pxKWraWGYghTu5arKUrmTCg3TlvJJh0G6m3SFswqlh3//sQcc4UO5zGg6Rs14nJbE7QVI26/az
 NgM4g42VRxcwN1iF4TzlQBk2bEeoohCOkp8zwOSaojp49sBlPfJEpjfhruGKQlNNrcj043BeG4O
 Wnh51QQ5g9Gl7O50qAzZ3QcLfsTeUWwkAJK39LvXvuj5aJBeHGJGV5lMDWLF3LyG6pgBqvu0Clp
 +/Dm5pUp9yVdFny3SiKh/0cYcMDJNLKqzjCJDLiohOeaSdo1KXwpY7pJOHuY0pnmOVkUB7AWI1K
 FTnO3ognC6QvGwkiJO0S/9oKr2ipakc9cb1I7ODCWlqgxV1NRIejuxN8/3FcR+MxYrDKdF40dC8
 3NmKW5S0qWBmMLOxA4bLBI7QZCqBLAhd7xkYUhslkfa46OAfvfDJ7oJ9Jh//7TsOYxLhUH5cgm6
 m3aSiJTWO/r2qs6v0HA==
X-Authority-Analysis: v=2.4 cv=C5TkCAP+ c=1 sm=1 tr=0 ts=6966567f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=9AGPOYKhFRli6DSTmn4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: aovlzQ0e1R2N_G7nBSqgHHBltCQaWTT4
X-Proofpoint-ORIG-GUID: aovlzQ0e1R2N_G7nBSqgHHBltCQaWTT4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130121

On 1/9/26 5:33 AM, Alexandru Gagniuc wrote:
> Support loading remoteproc firmware on IPQ9574 with the qcom_q6v5_wcss
> driver. This firmware is usually used to run ath11k firmware and enable
> wifi with chips such as QCN5024.
> 
> When submitting v1, I learned that the firmware can also be loaded by
> the trustzone firmware. Since TZ is not shipped with the kernel, it
> makes sense to have the option of a native init sequence, as not all
> devices come with the latest TZ firmware.
> 
> Qualcomm tries to assure us that the TZ firmware will always do the
> right thing (TM), but I am not fully convinced

Why else do you think it's there in the firmware? :(

Konrad

