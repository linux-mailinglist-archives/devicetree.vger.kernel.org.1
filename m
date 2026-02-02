Return-Path: <devicetree+bounces-261808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACspMzOZgGnL/gIAu9opvQ
	(envelope-from <devicetree+bounces-261808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:31:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D16CC5FB
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F463301484F
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 12:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDB711713;
	Mon,  2 Feb 2026 12:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V7jLURql";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PkFQXg0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D13110F1
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 12:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770035481; cv=none; b=RLlYHVp/f9ADEfDRJUgAxJoiM7agElcd+hIpfuGNuCtbsSIxQvC33GyXOOv3ULzV9PXagxW+CxPyZp4MiLddCHMN09KH/cQPdR6dGtCc+LnL2ZaN1yu5Y9cyk7X7H178w2IwFpsZm8aaHj3evsaoDjapfaQ8+gbRdBJ8/0RXVHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770035481; c=relaxed/simple;
	bh=b61oxYyLgjt9CI/rPacQ6H39Ovf0xqCMsPGFq3ukMYM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SpcUiSwLSnamINX05S1ktFKEbBL6GtR7yTnKkRYWlgaGf5LrELrY6G3G0HNqwNNayMw1zagzCKjd9Voo4HjIwwMwr0Sh6pqkLOskDvPGRw4eHKs+pvV56LNQIejJoq2I7FMZWpDS+9bteXjC6d1r1hTCgteDNtLF8cdMiIMVtJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V7jLURql; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PkFQXg0B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127tW2v720453
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 12:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yqWR2EKQkBmREXTkv9h/ZbuBH/7QLZqcwtBw+8o/e5A=; b=V7jLURqlw9qhAqiB
	HGPog+5I2P+jdUx8W9Q+Fn8tcvpRHQwDtJLYNjMw0j91I+af8siKQjL3ZNxBtCtj
	WohV5J77QZDPp5nQ3TI3agLAlr/OtiYMIwaZjVQMBz1Hktk2D1TvKRGnvkiTOMFa
	wsaX5M2cnBFVX52lBZHnm0dW06/ognQXfjvuRaODGeIgCaz5pHZUNNtTZkP3IltI
	KG/WwgZtZhlVipOkrc9w8mArsLVustG44d7KRyKjOcDQJPMtsxulbgPXghGnfeH2
	iNGq80S+JfWz0TaB11k+bQNluKNaRrvKnrdHwXFUVSWjudrv655Kba1MdCMrLk8d
	3ZZ6dw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awnwef7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:31:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6b48c08deso73184585a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 04:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770035478; x=1770640278; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yqWR2EKQkBmREXTkv9h/ZbuBH/7QLZqcwtBw+8o/e5A=;
        b=PkFQXg0Bdg7GwyFDylbGAgdomlVsaJB0kUh0QwS5uvGQLgfXXr7H+PfdGH6ERsZ9qg
         1RUccZDNPqCwXqnjVQtq7NXJ2l2yF30St/7cfriQMnIQ4v+6Em7XYkU5ODIF6qLxY6A9
         M+hpyonYPYj793F1SROZqFwtaJaJL9a8JFqmXXNUEF6ZJkAMHVauVRtAtOidpVYmqful
         ScSw/7mn77FBEO7V9h0IkYdCIhrAyOgI7DJheln4WPEvQXYCICd0NmmJRJY/ztvqzp3J
         8L2RUUN6wmUrp4yDv9sdkRsDnZby32lTHE8B+UZKCIuU24vvWE38iJYrH4xtvM4WIROt
         eRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770035478; x=1770640278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yqWR2EKQkBmREXTkv9h/ZbuBH/7QLZqcwtBw+8o/e5A=;
        b=PLYHJ5lolAS3eGNvcqqCZmDsL0yQ0iDdRWkEWgDSYLhf3xWRLU3/2h55pPbUAW18rt
         XJg7o6MMe9ksQkTN2Hp/Z8WiWb3Zuh6xhI/XuD2tTZsj18uOqiLCMiSauAExqHQTe+cB
         pETp/6LiOekfLmlJlUvAJFRyxXpL+pAM3Wm4oRKKx/wwIe7LbK3koRDOLuQMHTVEThb3
         ew2k2puc33zVg3Getk/uNZFcxSp+BSi1KgaJp2ErocC2I4GK3IT6ZAAsG/cpnMLAnE1L
         5fGJ6Fz3hX8ci0yIOr472fmytYr7nH8d8aEuJls3UdqM7m2jnOBZwIWfbyoVcyY6KOvJ
         Oywg==
X-Forwarded-Encrypted: i=1; AJvYcCWkczD8BU2MDAf+ox0SOdyOZ09Y3LbbujffVZ7f+lNpSxc/D5glI2pRt02AXBClohH7aUxIpAwWo/9S@vger.kernel.org
X-Gm-Message-State: AOJu0YxJLlHI+w6difpQ28ZGjRy4w9AodmQk77of8J/jw4Rqmvbik06Z
	dx+VcjENkvP1Ov8EYYVcn4r2Npgz9KwuVHQEpghfE2FFcb7q/lTrzsgjlrqMb2VIBsFA8diHzdy
	SQ1x3zd+w9zAY+nrKXmLgdm/BoPOX6uBAXuCYpwG6GWPBkNyKOvu6/gmP8aMLDBhB
X-Gm-Gg: AZuq6aKlcgn7CiZ2TTDwsnL6bU6ZlBJrA2hSPC6dLIZiHjVa/6DIJAMGv3kQ6W6abmu
	w1BP7tvc6GZi8FqW7YeM3+IE3KQoHxW6MOXb7xmIGAby8UxdWECsdeaLYV4mn6QRJbtD4qZl/7y
	4ZYRyT9ShbKOZ7bu0Kb98e5wJx0+I+9VZGZ+Ke4UyJ52NTyPdPsnv02YpEDd5CqK+DPhU8fCQit
	DyeUSpzCMnQJlPUnCvC/ywrTsF1ppM6+TU4kZKB40t273BkftrnHpLYhOgtEp0LP7gubBS6G0fv
	O86dIdxQUSo+t/+zsFaqIp6HTGn+iuR+QAui7p5y5T7OsPpc6liqlwffLPtDoLm0kYvvW3o7+41
	RcFCJr8VqHGp01pPdWjuROlj+6HX8YxeulZrSlStE35d8+y60tnhux4e3tdFKuaWd594=
X-Received: by 2002:a05:620a:3942:b0:8b9:fa81:527b with SMTP id af79cd13be357-8c9eb27a8b3mr1129749185a.5.1770035478209;
        Mon, 02 Feb 2026 04:31:18 -0800 (PST)
X-Received: by 2002:a05:620a:3942:b0:8b9:fa81:527b with SMTP id af79cd13be357-8c9eb27a8b3mr1129745185a.5.1770035477525;
        Mon, 02 Feb 2026 04:31:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469d708sm7599206a12.23.2026.02.02.04.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 04:31:15 -0800 (PST)
Message-ID: <19eec3b3-ad2c-4da5-9875-73fe9c63d606@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 13:31:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: Flatten usb controller
 nodes
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
 <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MNltWcZl c=1 sm=1 tr=0 ts=69809917 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Pu4fqFnyVTvU0wlyd5YA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: SRVjo7IT1YQgFd4wvR14r4e_On3mhNE_
X-Proofpoint-ORIG-GUID: SRVjo7IT1YQgFd4wvR14r4e_On3mhNE_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA5OCBTYWx0ZWRfX6pQK8uzKbX9o
 p7OF4UkSb51HE0+Yrb2MOzJMGFRO45uNQMS/t0YF7VBvBu+IbJKY/6YhNK8Yt4VF+86tzcEkVDH
 JahEJU+w/ykC0FlbZIeCe06v4e5hOwf0V2E+5/3O8R4W0POOtuSlOQ64zKEB/WClQ9s5d/vfa2o
 jbLDG7yAhl9a5iHPqWvrCV3iMO9atgEJ8C7DvbQzeA4ipk2vATaJAZMJt56ep0l7FMUKOwoHVtr
 ZZhll3ztxDj6ddJ4oABVaFi957wUJQAv2z0kLdfi/5MLF1wa0+jo3dmHQ31MPWMukws7VevA2V3
 v8+LRyUuc8HHKJbyT3BePp9Pdu8a01Zr6L8c4wbHvE7mEQrU5/Owo6cp/Ew4mNoA+qgHkgp8mxd
 Ec1CcHvaFiFZAOesYbe5Ahd4IK1LIy9PxRXjP4hmqd5PVmaFDYmyFpLuTwvrBV93qBB0QJrbmaq
 6srKQ92RzNeFb4Lkysw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261808-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 48D16CC5FB
X-Rspamd-Action: no action

On 1/28/26 7:27 AM, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings
> and flattened driver approach.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

