Return-Path: <devicetree+bounces-194843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 445A5AFFB5E
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AAC84A7593
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 07:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A988228B4F8;
	Thu, 10 Jul 2025 07:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ONcp63FR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25616286D60
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752134048; cv=none; b=FdJL2NbWuaS2M0YYs5ZEuMngygxseF//G4xxW77vAa16hVZSlwhQjSwKcRf0P68VMcyIxVi53VzT92gvbcCYIlaa5SxDVTQBlNlZoDwwSoA97QGc+lZBOx82T2cGhypwfN3909JXWa1DugY5s6b3vGcQCVZs+8neroGnoZKLVTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752134048; c=relaxed/simple;
	bh=LVmN9IMoThPPm55GG/XAdGDdx+9vMomvj/ki3t6YKq0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dqSgiXeW3GZD4kqnlxmpx5u3bxFD4SXFR+AKqUzQpegcwakOYr8pRvyyGe6cF67DmAAU/fPnop//4Dt/LfGz2HW2yRpAi5HjZpyDBOhvH9Qljb3iKw49O5hK+B8HAqOxgZl4CMwCjZjaZvG72NP8PpE+WBecFdL6sknXFnBPyDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ONcp63FR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A1VE71031906
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:54:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IZ4wqeM3mPOhLP715cEB5oc3
	w1TFelaRzZl7u+0pw2E=; b=ONcp63FRcLZayaishEpguP+E580hCyTZWbAygcYS
	efLIfoU2fFIzEUPhTXskUVrj1MahY4puDOw7uFh/ys2oVWZtDYakUH3BJMtdWybG
	sdgY8l5aJPcch9UoYyML/Rkr8VRG3797uwWAB9PHqO0yiH43KI9iHJ5SwgIczXaU
	ahly86g+neDbAYYxwsXO7ZnvomBljrwjcQrj/RzGVYnkY4VPQ+/+cboZ3SvPh7ZC
	vHLIpYTui3COhoC6zZFV+QhFiZ2pNuMbQ0lWHU7PG3nkObdVxKb84Mr0nBzc89Cz
	ABsSkFzr+zcj7rxJ3J9go5YdrDCCnDfqe3FpU8LfThUEXg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qxnwa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:54:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0981315c8so55567985a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 00:54:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752134045; x=1752738845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZ4wqeM3mPOhLP715cEB5oc3w1TFelaRzZl7u+0pw2E=;
        b=PZ0i7oTicp6aj/69BZzU1M24RjDnDr+wTYessHwLU5abeI2NGUqol5EXeLs6c84nlM
         ROxzTJe9LVO3YEt4MgingboIGyBCWHy+3t87PSW8UKiaGL9bdNX8H8yjajWqdS6hO4Va
         mntuCKQ2xo1LIDiRJIDquP6DXqeZLZdBGWLsoYpr25Ll7KXhPOUt8K4WUBjHB525mrlQ
         sdQDVfLs5oH7TGo2Cpgx6m8nAPQQp0zxCuiT9ym6ioMsrHzNEgU+iLSpkTsYf3HmbtJ4
         1hiscNFg7RlgTzduocrAOOAhb1fQbqwlDXyD2dtR+bNOYmwgWijLLthyAFwGldVeNDst
         8L4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUvh6lAsHnNGDGwpqZ0d7YTWxnw5+RNBV4bfMRpqyDhsZJrHmnhDiqtOKshEZqlLHMtfjamnFMn9aek@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1E6b4zUT0K/AnzjUWZOePbywEoeS0kNuiFpye4jOMKGC3fqlr
	0GZdeg1ocYiR08SWjxwprwooJRcI7oUg79ZBQkFbiMq90XqdrES1nGcKLjzLemCzjWLMaps+fVV
	Ejk5ahyF0Q9BL24P3Z7w26J9s0ypNdEEfFi4XssV9/HkP6p63rUZDM27yCNS4E6+O
X-Gm-Gg: ASbGncu9oafKol6OIGFdOA09YRTr98gXTlKoFsI9vcQvK8iU93QQe8IbXdKYHT/zz5v
	W/OuHO1MUhvpyna5VaMzRGNlYslXJ9BRD2l39oWY/lCCN23qszLwtfZcFYBCg8Z5EKXrcXi0vOp
	pDjfollw8Ks7SWto77z8tJl3j5AU7ugXlF43eQVCEKP9AvE+cAfDvJ7MOd2yb27u6cJkeqwP1Nu
	zY/w9NE9z+LgeEUS6jjKT5qCV3VrcOWTkL6a4SYjPepmo8FqVhWie28fB2noyn39XSw9j9SwDVv
	qvo7xqt/YK26UN1YTPcpkVVqi6oEWJJNnshfz/r+YQiXNKLIPF9oBTw=
X-Received: by 2002:a05:620a:1a04:b0:7d4:57c8:af59 with SMTP id af79cd13be357-7dcccbb4d3bmr259298385a.50.1752134044857;
        Thu, 10 Jul 2025 00:54:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGug3lj6BT/YLHkKCvadb4meP/9pexcx5rHM0GbCxH95CB5isoXEHwrq8yUV95hMPU8pZzHqQ==
X-Received: by 2002:a05:620a:1a04:b0:7d4:57c8:af59 with SMTP id af79cd13be357-7dcccbb4d3bmr259295885a.50.1752134044386;
        Thu, 10 Jul 2025 00:54:04 -0700 (PDT)
Received: from trex (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5037fa0sm49646845e9.7.2025.07.10.00.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 00:54:03 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 10 Jul 2025 09:54:02 +0200
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, krzk+dt@kernel.org, konradybcio@kernel.org,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, amit.kucheria@oss.qualcomm.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/7] media: venus: Add QCM2290 support with AR50_LITE
 core
Message-ID: <aG9xmiDzSQ720SQW@trex>
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA2NiBTYWx0ZWRfX+21fBuNaGcj5
 Ckk0ElitHn8rB50anYmTpyz4oD0OCbk1/pIr5Pp0/a9dDwBTYj8ZswCtNHZTAfzmx/po8kAyVw5
 MYbQmQn2M4e0W5aHfOPRgI1iEMVDiw6lHS9oDSil/UYjg7kdO5bSvpYXsZDTlMAccngXMX4v/M5
 9bYL3suSl8o5vOlnvVS1khuUUwMXGK1gJ42zvC6sPAPOOU7iyESjYEpyJBKzRVkBdNvwbSGdCtX
 +QMjQ3jpVKKTpCgDvz9GM7jnuLXY7yEsdoUiC15Q+lVEv+0f5P//NPSgJDOumsreye+lzZOxMzo
 nd3YeS9DLq0wQnqX234i4ZwS+rjFrtc3WECX2j6J5MxyaRluJha84rYyfvb6CJH8TEF2Db1k/LM
 2ocKO6ltqY5kjtRtYoMUeLsAoU2xZMVpMNoaakB+kO/nKqeAuxUI1RP7QKuDA7hJnmrEyEUW
X-Proofpoint-GUID: j9LScTyQWdLmPKlUFAqDC_jOENtQdhH7
X-Proofpoint-ORIG-GUID: j9LScTyQWdLmPKlUFAqDC_jOENtQdhH7
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686f719e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=N7Dblu849QoN8slZYEwA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=715 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100066

On 08/07/25 20:05:23, Jorge Ramirez-Ortiz wrote:
> Changes since v5:
>   Two additional new patches added to the set to support video encoding.
> 
> - patch 1/7: Add qcm2290 dt schema
>   - added reviewed by: Bryan O'Donoghue
>   - added reviewed by: Krzysztof Kozlowski
> - patch 2/7: Conditionally register video nodes
>   - new functionality required to support AR50_LITE

This patch needs fixing: when one of the nodes is not present and a
system error occur, we hit a null pointer dereferrence in
venus_sys_error_handler.

will respin a v7 in the next few days

