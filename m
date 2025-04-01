Return-Path: <devicetree+bounces-162333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ED9A77EB5
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 17:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB7BD7A1D4A
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A4120ADF4;
	Tue,  1 Apr 2025 15:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aC42HmgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362712080FD
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 15:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743520603; cv=none; b=kE6qekHgx+VON8QpadtaKImau4w6FTmPjRMGaIEORigXnw3K3Cz7EVCpy/pAvWd2+Ltf1arzEUI519d7K65q4gri6E1oo53qy6ygMIVj34okejkHnA1JOsulFxI7W+h2O2EyfK3OmBvypPIgth065n5ADpNSsBfhKTqdQbZkmYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743520603; c=relaxed/simple;
	bh=atpotmIpxJ4PlCifDaLz1QG5Zt/cJjipBuKt826e26Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uxXgftUfJJIISppm5W+ftu56SlWbdChkJQDoLrbTIk+ELZpYXcL1LmMfeIgrwTTkLOswKTsnsIh4+q0JY6GRhmrruYOgzxCsmAGRMQJuSB4n+u4lbUnHzUArX1H3HwsU8vCoVQsZAft11zW5IneacDlHZ1jQMOtepvKcP5VQoLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aC42HmgN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531CMe3n031764
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 15:16:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HDq9Quo5sUxjvk/E7cLnbsS9IyoWsKmgHCK55eQ++5Q=; b=aC42HmgN5jOLb5bu
	KeAMWuAPHco6stGDTxVlAhqa6Idau/6UiXIWPeYw620qCEjz7okiWYxsxU4p8yFn
	3VqZG+fbknenQCI7r7BHc8HpyyH/8bORLbbzpmSo200/+OGEU3Sx2UbaAaxIxBUJ
	eBm4Y1YeY+KTcWZt7SlNzjYRrQi3IiVf4KL37nBDuETyDrrP9gUlg2UzMC6vnz2R
	kRp57uN2BMd5Vjcm80Y64aGnknOdr+LFsM5AkdKJUJK7OTo+8MD4ziCKUEZ/Gzux
	4OvwjrSQmmk8Zfwur8zhq703PxWr4UZFWkZlmBH5vRo6n8//S2zTeTkng3XOMTOx
	RBRlFA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45qxa7ufbc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:16:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5841ae28eso174980085a.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 08:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743520600; x=1744125400;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HDq9Quo5sUxjvk/E7cLnbsS9IyoWsKmgHCK55eQ++5Q=;
        b=w1NiwVF0n6a9S2Mm/Br10bujbp4e6+PPsXPad4zCa9dhphxmOfXYyZODN21uiGFm76
         J8SdwdDFn/OOuikmh0V2jIYtTL3NKnFqg87RoVcec2KzbD8Ay42zxV70rZBFmUgYsMNf
         CDmGngGgjHrhT/S5JwW8JwEdcT0XEZAkoJhNi27iyRvRVuXT+abfZ4e6C8f5TeC3RfHk
         HWjaKEPyrMy0iZyg7bCvyeQciBVJ0K7WevfPyDJ+Go+UZ5St3TFPTUq+8XxiKBSQSsFc
         T0rvdORPj529A1o93akzrsztd2HMCnIpXfjF47KXMO1UFsHU8aFSLl3qFKEJvPeYKCOx
         h3zg==
X-Forwarded-Encrypted: i=1; AJvYcCURu65kgw9uFqPywofZJ3hX41PZAabcTd0ouTRuMbEZKwkcCApyJQHieZze9B0y+EVKakLipFOj4NC7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7A3DfscgPMr8U3jX16f4wLbeykdmYXxUIP0A0kotH6C/XV1KX
	uzktz0ASawGzvjoTiIar+1prvC7FlRIKAZ0bTIzA8tLeg7z1f0cfQqlFG299uiaT0dHlrUeFsM1
	gRyNLUB5xzBswWvSRjRT71rAwgxPyQkei4pxoyM9z+z0EWr6M+S2pLQGXnUz4
X-Gm-Gg: ASbGnctOZK3pGz9s9nYGFZPoKb+Lh/gzTj682W2dXyy/ycIZQrBjH296AJQQR2sZOmL
	/2HbGeFRkZE8FZiSQWmjMR/mTnW71LfgISS0fUajGxa5uc1aFISwtP4xASH0reHc7lkG5WC4vlU
	wkOjQiGeoXBPHylCePNMEDNBRqLytkc2iyQPbu5PBiaPs2Q9yokri/m5m0EQGv8IMu1s0q0qs0E
	TxLkpoEIKkxl645JnJXJnPvYpRkX3WogKJJj+iyUY/qHv6uObGg2kE+uSbqqEkBprFwozXv40YH
	GSc3EBNm66o+SQcx0gqMBPI4UxXj5t4TdV5VJAENFckeOzdQzc3lu56gojrT2Lzx1B/G4A==
X-Received: by 2002:a05:620a:408c:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7c690725305mr705613185a.2.1743520599889;
        Tue, 01 Apr 2025 08:16:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfF2wwaKHEPlAiu8lDrYWKJ+febc0strBl/Aji3TXrZn/2jWGkghHEZRI3MWZVz4er40AdJQ==
X-Received: by 2002:a05:620a:408c:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7c690725305mr705611685a.2.1743520599420;
        Tue, 01 Apr 2025 08:16:39 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac78bdd54a7sm84415466b.22.2025.04.01.08.16.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:16:38 -0700 (PDT)
Message-ID: <cff6ab27-da1c-4925-9f2d-f12a2671e7ec@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 17:16:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qcm2290: Add crypto engine
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com
References: <20250331123641.1590573-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250331123641.1590573-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: s2n2E2vADaAF3O-1whOPGItHtp81BQjS
X-Proofpoint-GUID: s2n2E2vADaAF3O-1whOPGItHtp81BQjS
X-Authority-Analysis: v=2.4 cv=J9Oq7BnS c=1 sm=1 tr=0 ts=67ec0359 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=pxQL0frbaL4a0zJdC2sA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 phishscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=769 adultscore=0 spamscore=0
 suspectscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010095

On 3/31/25 2:36 PM, Loic Poulain wrote:
> Add Qualcomm Crypto Engine (QCE) and BAM related nodes for this SoC.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

