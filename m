Return-Path: <devicetree+bounces-194138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBD8AFCD2F
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:16:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C4021670F1
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206302BEC28;
	Tue,  8 Jul 2025 14:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QiG9r98x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4C71E8322
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984167; cv=none; b=NGLhmPKwcZ2QElv0OK5dDoSU1VBwfGSHSNflaIe3PbsQZ8AFrn2gRNrrrKVV5ndyyOuLBm/1oJNnZ7RX6SPVdWG6+ggHJ1D3gvWBtHinVndACf16LxCoWEJQKj3cfyocXz9rL/QfXgQKXCa9n+2nb5g0D0ncyaanupeZbcSatfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984167; c=relaxed/simple;
	bh=E3lfaH1esoHl+ru8dt/bh3KVLlHTXxish5JJputhM/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d4crkY/uP1HrF1X6P+fh8VkH2cOcuturCswQ4h49JS/SJwN0uRwTYOWsw7f2qEilPm0yScQGntthPg/27lzEuihr7QuDvRZLwAeTjtn8R0lC/+LDu73HARq4d/Esxlg2teFyySXdawfkPkCVp6pG7MeRGS8u1f8UpPooKFAJR0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QiG9r98x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAb9W017129
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:16:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DZQVHr6h2vbACH/HxbUVPyBgPPfJWbpb9xJOT/3ejgk=; b=QiG9r98xOc7yxMot
	4Pyj/5ng2VQ1vd/ThuyA/rlbm1NoQ+H8jlXCA79GkKYltN7+HzFEpAk4lLCKZpkb
	HgYsUW6I7qS4xnWzV+F95qUKIGBc7Gjkpp7FT1B3XgrhIWeSCrdodkaSN1nqrnJm
	8Mt3uEi5H1I6zW1xlKpC/WbNtMo2HQldVjR39HDMHYKHt253f8rsIOz3SDZVkgXm
	wLb7KHy4jQcW82z8Uloe0ofDSodFHrlEoHOUVkQ7w8wGgzivv8t8R9jZQ1nBHsCU
	YY25cDA7AUiwpckwupN32lKA023RqQK3bPd7OsWP+UlA5AwYjbBHW1iBkY+NCJTz
	SKqL8A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pvtknwvd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:16:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d21080c26fso64991985a.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984163; x=1752588963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DZQVHr6h2vbACH/HxbUVPyBgPPfJWbpb9xJOT/3ejgk=;
        b=pHWXb9OLSO484n94/kXpK8tp0jZVTAqq3rVV3Qd52HULHBas8Gu3QSR2N5fClWnEU1
         cQ7j0bRexWzgwWgCwoFDuXAw/qLWWOwVtfrl+b1fxIIu8L8E3aE69gKYTt/msciQWgXo
         6fv/9B1RQSxbpQwTY7rXrhgiFZx1h6rD8hwVRWngUeRF/c5On/Y77uRqtVoffX63+TM8
         QTrhPAYLdPLDFQbg+gXM3yaNRxnDEU4X1NOASPFQHO9dtwbT4fRdPc63SsA68GUwrN/w
         KCHD8dj65Y9O5l5J9OOzMtr8RYc39Q3+pAdoinDVDxRRXAUXftG5Q8/DDloyqpOX9SH8
         FG1A==
X-Forwarded-Encrypted: i=1; AJvYcCV3e/3SZ2RoFfO+2iXwXgWtJUMm6ZEDde0DIjV8fDuEMCD8DHu1xwyPHCsjC3wtguNHjv1YQgn/iyTL@vger.kernel.org
X-Gm-Message-State: AOJu0YzzkN+j/T3Qj4x6gKcprEixHOEpAgX7eBd1ZM8ki3cAMHcIiVWd
	fqLbkAyY/B38bskVgHtSU+W3qSobLQZDTYlFKLwXgkhnF+eCQVRYrYQLXMXvxTiuPCsR5HAwV5U
	qurfBENYZWFvD19HhuKMcQn9moJv4/IzKsFPKcabeU/ZXQX+slqfDn10HdDFT/eOb
X-Gm-Gg: ASbGnctBLUqTKFOySrSrkvCSfDZ/Ox5fMVMZUGS63L1Dab7PzZsZj8EoOGXZJbwLmTg
	A3ZfYfyB9FiIumtI5RFiBwrcR/Op+mN3cv9fxd4KvCb3htQdYKcvA3W3TNEA2tu/avi1dyoO/O7
	yAB8We/6gRipzs3QSUVmRE1RkJbDttxpI2i8AbUChq7Sq5kihh72aoLsk3TdAoZ5Jgre3PJazmn
	x57IJJ+GeoX5PJId/SfTo71fCF/5JyRIE7s5MbKXTDqtYQrtxb4Ubr+CEhZulIl0LO6xNHXTD+c
	EUDXHn3pJurFCgIr+R92ZJNWBKKsgxxgOqsbsXbrrRSVisE98ZnpipDOIupmjj3we8EpAsiEp72
	FAZs=
X-Received: by 2002:a05:620a:170a:b0:7d3:e9b7:7121 with SMTP id af79cd13be357-7d5dcd42af1mr823710185a.12.1751984162971;
        Tue, 08 Jul 2025 07:16:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoRxKnbbwSsxFhWpE2/NEaVUl1RaxHp0HVlyQd5O1NsiVnVWQKCituQF6abehsg1sXoy3qKA==
X-Received: by 2002:a05:620a:170a:b0:7d3:e9b7:7121 with SMTP id af79cd13be357-7d5dcd42af1mr823708285a.12.1751984162353;
        Tue, 08 Jul 2025 07:16:02 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383bae7fsm1700290e87.50.2025.07.08.07.16.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:16:01 -0700 (PDT)
Message-ID: <2ada89b4-adc7-4462-a9fc-ebe692623fff@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:15:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8226-samsung-ms013g: Add touch keys
To: Raymond Hackley <raymondhackley@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20250708122118.157791-1-raymondhackley@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708122118.157791-1-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDExOSBTYWx0ZWRfX/kYXWMSIfmpW
 dTsS7kfOCf5uOiVFzLHQRzedMqIcbHOGduGOKLaCQAUhS3LS/V3wlPkPHlz6Zi8BvcItGK+DBv6
 DUHIqr2Xm6w2KS6A1Zu6lyTu5AeE1/MS1pE/vc2WKT7LKDjcLMgXOGQlDej/cTEtgu41gl3MAaG
 DXd+paFJIsSNvafxz1TH7iOBgGrq2z9/UQWKaF3Yo/6UM3qXPR5WOSLQ6M7thSO8Xpu7+zk0euf
 dFNneSZ2ZFLnNVq6ISjQeqbEHQ992RKEU3jdpaobSi6JACTjJ8RCWsLmy+By6kDs0g1rB6KuR+S
 K16ulckYN5FiQFhhq966Vr/7JW3Uui5OrjsanYJF5NMecEDpNgkaV/0c/PaSefphP2clGubZG01
 KSh/98VBWrxZdNHRRO5u6nkh0pyY3leJlGmfU4yxFMCg3eoE0mJB9Te0/tfHW8rev19Ga0Sb
X-Authority-Analysis: v=2.4 cv=Vq0jA/2n c=1 sm=1 tr=0 ts=686d2824 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8
 a=DCnaCfRbCLLe1x2JEeAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: VnGzioiAFh5aD_44L9F7lB-V08D3R_8g
X-Proofpoint-GUID: VnGzioiAFh5aD_44L9F7lB-V08D3R_8g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 suspectscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080119

On 7/8/25 2:21 PM, Raymond Hackley wrote:
> Touch keys feature on Galaxy Grand 2 is provided by Zinitix touchscreen.
> Add property linux,keycodes to enable touch keys.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

