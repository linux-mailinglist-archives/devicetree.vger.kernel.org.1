Return-Path: <devicetree+bounces-266971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFsaA6FumGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6F1684EF
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CA173024A7E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E72534CFDE;
	Fri, 20 Feb 2026 14:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aeVOjfak";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iYQ5JGAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525FF34B185
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597470; cv=none; b=l5java6mJzCYXL5dzUP+SgkTULf3TUTtwQzZ0xwZDF08FgRS1qUURdmXtHgtUfqaN/IydGfmFseqL3QPwjqedTcE27UKCVRHdcHTkD+Se4IZ2pHzOAc1bdQ4IBt0zuev/6LWZjA76RJCtmQ5twgkzRfepNITMIAh9bL+hs2wkac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597470; c=relaxed/simple;
	bh=dRQoQ+oI3oyRa1YUmaxTRkAhNFegC5ZJ8ImhkpuMUWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=klmTqfZlFn/suAaVyP4uzp/u2zwbvVBUOEG69+hpe4UwwjGSxSkIAOPMDHpm/f58C+QZ0PL9OVB9MxYKXJXah+kXZRCrIJ5O7x4dgDNndR6MLS6D8ZYPTgOVPwzX623/OCPrsGfEjPIE0ZaHqgnW1ayXlFrRysks6nRUm7Yy0DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aeVOjfak; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iYQ5JGAk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RpTP2552662
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0//Dxsq1TVWMQt7xaqgkecNvssvh6Z3gJ5xg3T+XqDc=; b=aeVOjfak11yqwvPm
	F5HIGUhYGzS5DRtMjdji6G5HYPbfXNj+EVzDp/a44OQLDtJfEAMnprt+6BIF4dIX
	dwUMWCBCDO8SECoA2INiM+5TEuRM65hN16rBGqlSUkrvUvU4BW8mdCshs0e7JWi/
	/XTNcj0FMuvUljzrwrikEbJ35fptw09FbEd7p3le7godB4leAUxUIb1naRi3JQnS
	5LrzfY8//JDmfFy1dOkPFrxS2CjqsMXMmJxS/5pPcr77s0lC2Dj2c88eX3jlg9PC
	rpc/FoCTyTvkfqBomojgrAYY/GkMFh5YWg9+ZwnIyXNLWanzOBrZrswsxkXf/QkR
	KGL1aw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh7t18wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:24:28 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35845fcf0f5so2849572a91.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771597468; x=1772202268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0//Dxsq1TVWMQt7xaqgkecNvssvh6Z3gJ5xg3T+XqDc=;
        b=iYQ5JGAk3oawulznLm5F94VIzmcDd+p1e0wuYGdP4pK046rmvqr67F726jaOwocJf+
         lEwW/xR9QIG/15Nj+ozIwzhTNynwnU9TMo3s57FO9RUXwESQ4M4gqHR8bfUtEZrUVy0M
         mvGQqiOuU8S9YKzFBKi5N5d7q/5whws2LcR0rx8W30Hhb6A3x/SnghMqFP+E+E+8REXh
         3iApqCuu8j0u4ntxhaw3KYqLyCSCcEQRHMGD4GUh40JBvMSDVUf/tEotoEodlIJ3P67l
         eGPKCfYGmebVK0K+EOokPwJ03LVxj4pGgxZ1+IElNO4JvuD9/1Lx8LWTXnCKpfOG/AsO
         PArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771597468; x=1772202268;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0//Dxsq1TVWMQt7xaqgkecNvssvh6Z3gJ5xg3T+XqDc=;
        b=WGGVE9aOyamJb+y/kqXVqPb4cbv5kcG+Q1W/bWvzspwNtvhLHPvGGKFylxlY2JIG7c
         Y8cTwHk8J4zYYQYSKSjMKHcWPePWYfm2X7zpqD1ZV4+231dkE+poFUfASdEb3wA2rObd
         N2BFVRvoKPRsUpsnkfpB/LrzSqfFuIqV/JdC5SihRPpPo33JAgyFarvMyO6M5UNbKyMw
         whsFlmOp3zFzhwCzHl4mKpGly82j7BpOH3SWQ8qTUHZbxeHQmL3sYJ5/pZPtScCLFNRj
         +Jja8596li8htyP4WrsyT/+2Zy0y9mpz4aoUBXtNFasQdrw2NAfaxRzf+nYm9a4gUQaH
         qn6A==
X-Forwarded-Encrypted: i=1; AJvYcCVmWoRuvvQka1UnZnGzZbOnNCP3BpbqeNQeyg7JvbHeC24ASMqRgUkzNVa2/XoTBmEF21dE+pXbir6l@vger.kernel.org
X-Gm-Message-State: AOJu0YxqalOqp8Mwb9SRr+oP9r0Q0vXCYooY/ce8tmMq3ih4twgl1EuI
	/OqVDz3RcNd1jroVbA9giR55XBNal+VXPnJaoQ2SnFdGjTkc/L1AM0M47Q01TJj/kd1DZWdvgii
	XEcGTOi2gzwIC/0//EDEpmPASGYEpAhldJDPTflKnCdZms9rDlLjwTKXYQMGfeR2t
X-Gm-Gg: AZuq6aKeeMDOuzzh6UiEn6PM5SoonGZ4Qb3P/rAbuqdf6DAHbWn0LJN8l+aX+k/PlYV
	F/A1DexuG407JXtsNSszza2SELNiMZ/RAU0DOkxpPXgyi9yQuHSubN215iz4H+aq5elyyoypeXv
	JCuScSX5Syrtp/7I7Bt/p5UXuhj6qRjMHpVG/tNpiUKu0paGj5pEZKObL8te+VZ3hcuO47zIDhs
	RmLc1MyqoCiwwCKW8UrIvrTckGKgnSrobVGi0e87ZIv4mxf73LyALHTlnb5Y+w5lQzKMyw+28qw
	XzDdehS8XvtQBbRpMRWnT+QhZAv/byzrZt0Jtvl/Yo7Fl9H+iMTVsIlOG7imRFzkxmNtu5s1GRv
	aYl9YAWBgU0Q8HlftKcoVMbiHG+aVRjJhHshtb41Cu4Ku4xmN3A==
X-Received: by 2002:a17:90b:1802:b0:354:c452:b2c7 with SMTP id 98e67ed59e1d1-358a5d4c710mr1671276a91.16.1771597467823;
        Fri, 20 Feb 2026 06:24:27 -0800 (PST)
X-Received: by 2002:a17:90b:1802:b0:354:c452:b2c7 with SMTP id 98e67ed59e1d1-358a5d4c710mr1671252a91.16.1771597467297;
        Fri, 20 Feb 2026 06:24:27 -0800 (PST)
Received: from [192.168.0.195] ([49.204.27.241])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a1a2cb62sm1711507a91.0.2026.02.20.06.24.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 06:24:26 -0800 (PST)
Message-ID: <2e0cb980-3f19-4bb1-ab10-349085d455e3@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 19:54:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: defconfig: Enable Glymur clock controllers
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
 <20260220-glymur_mmcc_dt_config-v1-2-e0e2f43a32af@oss.qualcomm.com>
 <db6b5e85-bf19-45dc-b536-75512096a5f9@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <db6b5e85-bf19-45dc-b536-75512096a5f9@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: W0Wtpzlc-zY17bWeF2aV5N0AmxxTo21M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDEyNSBTYWx0ZWRfXwo7oCgMHPk4H
 yoEjfYsD204JuvqM6PqItvLTNOGfWBH0cH7bQaeb2H+MRbpp9Aoewt8HCzUgJs3aR6armKPK+o3
 PKHG+uheKldSE3uI9mIfDNNmjhPyMtKVSgpKtbny0uaakwGtNwigJalnggf3V2a7fa6kKJhNEy0
 dWQGmtUdzlB5z2D1oFol30PZ3KCsQ2zGTGwutHN1ybuoFIIKvBwnZvRhNU1/8O24NK7IVMNJupE
 /npaloeE2swGTxvBvbdihLVdPyfqCHLgiFxnV3BAZfzCpIJ21J1l2y3UVTZiWYjC4cu5nF9aijP
 utKbDBsuGLuzUEKjUPVeTxGh9nNnM00UIPIpeixn9HxgfA4syewzoMSK7J/mFz1aKJLzU21rwB3
 Yrtk6rjrUBBacUmB3+1YNQm0HM6hdAPXOvrGe+cagsxiGIUj+EIEQBvIddd/ZD7qKcTDbKBp6ON
 XG2zdr4KVTfgcb1h51A==
X-Authority-Analysis: v=2.4 cv=PcTyRyhd c=1 sm=1 tr=0 ts=69986e9c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Zk7Ki20fgETz0Ru4rw8ykQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=kpr-LFZNc17thhI2UQQA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: W0Wtpzlc-zY17bWeF2aV5N0AmxxTo21M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266971-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67C6F1684EF
X-Rspamd-Action: no action



On 2/20/2026 4:37 PM, Krzysztof Kozlowski wrote:
> On 20/02/2026 11:16, Taniya Das wrote:
>> Enable the Glymur video and gpu clock controller for their respective
> 
> Qualcomm Glymur SoC
> 

Sure, will update.

>> functionalities on the Qualcomm Glymur CRD boards.
> 
> Subject: Qualcomm
> 
> Again, you are adding commit to generic kernel to generic defconfig. How
> anyone can figure out what is Glymur when going via shortlog?
> 
> 
> Best regards,
> Krzysztof

-- 
Thanks,
Taniya Das


