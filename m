Return-Path: <devicetree+bounces-180740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC30AC4C36
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F01916D091
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7B11DFD8B;
	Tue, 27 May 2025 10:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cmj/ibiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B429142E6F
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748341438; cv=none; b=mXiHOL3kEHo9CTwudGWy3VQVOOn/WtDOE9qIrkFj/3PCFqftjODt/lCZ9gRDXW9kK/11uuK0o7DvHYuoCFITWYR/c1cm43l4SA0GOOwz6DM6P29E95ynEuwq5n0YfsbxFCpdXqYiGu+WA+1VCBdMc+HLLY+1le9g1J5DFBgJKNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748341438; c=relaxed/simple;
	bh=d5oYTkyvM5Rfr5kvW2WiUShV3782Y2zCoHdD4qgRIfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bYfdtRaat3AYHIxJBntQ3f3loU5nZ/CTxhFV2EPrzuywrB8i+S2hGvU3yK7FaVaUmNANnHhma4/qfes/m4EHkPIGzn3MurMEZt0sr6oVO5q01qJnvZwc53k7UIJcat5ic24/j9/elF4llW0Nk8gaN8QdCmvhstN+FoMAqi2x5Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cmj/ibiF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R3j46Q023637
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:23:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s62TShu5x2yVlqUVBhpvVO8xAtnVMjqzkvJEdtCK5ak=; b=cmj/ibiFw5KtQZdD
	gY20Lv6I08SF/k1hfGHiwrgxzVoHLl18xqKsZiZxqYZI1J+LsW8B2vGFSCP5Pofy
	XccvktVt3znjzanBVh78MQlQt8WkE45RGV0vCgEr4coqdGljmJFOxzMbotC3ShtY
	yibo5Onhb7WC0z/HiRz1UVyFcPxoAs+w29DFnSB1ZQTgaFK7/ZFdpuKUqlmbeLZb
	QghGczkBzWCspFbFQJtU/tFvnxnTNcS1ZmP6zCE2SXeyz2EqFYFh421jhrLITKM1
	qXvd7oS5JBtVtOxenGkyAkYyQjMMhAEFF2dNJPVlD8WBq/s49+l2HeyE7cJpknOz
	y+B54g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79p6fwq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:23:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c53d5f85c9so99468985a.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:23:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748341420; x=1748946220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s62TShu5x2yVlqUVBhpvVO8xAtnVMjqzkvJEdtCK5ak=;
        b=gf/LlpdfSDr4b3CMagTDwd0rIWWvcvrV12l/4OIfW/zfxdYicsqqDXMHXl+cjGkiz4
         5+eq7ZtFt49WTlw+sv7IZFnTP7qTwDlDTtmMb/UzZQW5IEcEXOviVCjjmpJlZ70X3Rua
         na1B0vIUVk0jzSZmbVNa5WVjUpXS6zCAFqEy4HNlOv8MxfG3f3VfBEKiB9+mnffQyF/B
         xbiYE5hBnZO+S1dL2zlIAvOSCxK4CKixNH9P0chF/8resWa4AIKwODm/Wy3L4X75QUlj
         7H1hKWkSSxWfii7GxzOMJEnv5f7HWnxazOWZP2Km9XK5mTyDmrQhtqMtWPZKG+rqvv5b
         Xx/w==
X-Forwarded-Encrypted: i=1; AJvYcCWpGoQkdWvqs86x7Evc16gaOoffms0ViO08rZgkQbz/0WXXK6q0rrvtnj38PSfue+QqxbQxrvlhFq8B@vger.kernel.org
X-Gm-Message-State: AOJu0YwaSP2vyEaCJtKo6Au98JYe+faCuYMOqeibzyUkQRJIW+wRWlig
	tDZIfbZtK72CL1MUwB62yjordGBInS2qr1uPe+k0eCeiuUJtYOfzW1nwgYDifwEvD4+BWDZYmm6
	s6jCGMN5JG3PAMAehRCp0bhMN8pAbXJbXSlAcvTDNCPVfgLAWpi9TYgbWSMlWEEnI
X-Gm-Gg: ASbGncuGoZVUyODuXP4pRmvmF22yKC/9nEFkasx2evpJfnNu4vYbszP9wQbbXSwT6SN
	rXSlO79OyXJM9c6WKZRmvzILllx51UJ2Gt4qy3YKn9CsM7Nej28ktnjrcoWDboVgAPLtDLG64W3
	5ry5JCVJI+h/KDUALomOf/iiOw7AE95Wh2F2JWwEs/PGqQQBrivSDFCdZIhyzlhT2Z3A24GUWNt
	UTq7TllOoaVeGQB3ppCKfOKYpxM/8biJw7LXz2X7dLJBKd7PKMi2fA0ZFvn/c8df1f2GtEpYVLv
	gr/GDjna36zgnTTHCnpQg4Bx5EHbZmBlqFncJ+B8p0WSvFjh7qVLOW4x/dQJTiQvew==
X-Received: by 2002:ac8:5710:0:b0:48a:80e5:72bb with SMTP id d75a77b69052e-49f46055e2cmr72004471cf.2.1748341420350;
        Tue, 27 May 2025 03:23:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbnFf4IFSyFhIacoOMoDM+QdVT9dgMuaWvHP1dR9WzcAFqNAZ0pAaEKt+/hMSM5QRmaJ4iKw==
X-Received: by 2002:ac8:5710:0:b0:48a:80e5:72bb with SMTP id d75a77b69052e-49f46055e2cmr72004311cf.2.1748341419928;
        Tue, 27 May 2025 03:23:39 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6045a890427sm4231193a12.49.2025.05.27.03.23.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:23:39 -0700 (PDT)
Message-ID: <5fbb515a-c3d0-4bbe-a689-41e730ecd952@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:23:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: disable the CTI device of the
 camera block
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jie Gan <quic_jiegan@quicinc.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250527015224.7343-1-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527015224.7343-1-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4bMm47LChU4rXldMQfjGbgD2Y2tNi_dN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA4NSBTYWx0ZWRfX+P1+UOSAw9JD
 bTc/O5rpCuctGVcrPLsQ58oKKt+puNDllkO/y5Fya8/NBf3oerk57b8oaYVPWFHiVpj74HZSqqv
 nL8idLbhsUEwu6blrZipI+nqc0vXwVcn9YhVvoprMk//ZTWCwYEl60Su51ZlVMnn8wppSnXwuBs
 u2dnT69H4OYAu0VFjr3ZE/byJwT9KaxFReGZkZe9L7nPUG1TUArDKO6yVxkOhc/2yOSX2dD1Dcz
 FriJEKAHMXkNUUz7TUHmSUu1WGe9TsNYYKkmRFcjqfvCtPiIATUoIYp2LOPPrOjdY29UbueMltR
 2gXHXYSj26BVYIHEe1mzljc2W9PqAIPUpG9N7eTTcfl/OcWg0fqarOj6ADj9xjv6XDzlyCQK05U
 g+EwLrhIblU67dAwY7AZFwwQPppiD37P2PfDUkk2YM8rlXfEUDlrctdX/dMk1DpcHXvzOJLS
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=683592bc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=vltdqEpKQTMQQ8pm6BgA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 4bMm47LChU4rXldMQfjGbgD2Y2tNi_dN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=488 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270085

On 5/27/25 3:52 AM, Jie Gan wrote:
> Disable the CTI device of the camera block to prevent potential NoC errors
> during AMBA bus device matching.
> 
> The clocks for the Qualcomm Debug Subsystem (QDSS) are managed by aoss_qmp
> through a mailbox. However, the camera block resides outside the AP domain,
> meaning its QDSS clock cannot be controlled via aoss_qmp.

Which clock drives it then?

Konrad

