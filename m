Return-Path: <devicetree+bounces-315253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tduUEsHgO2qZeggAu9opvQ
	(envelope-from <devicetree+bounces-315253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:50:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7006BED9A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:50:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Q2+ubZB5;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=A43+KDA3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315253-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315253-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9492B30417B1
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 13:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271803B6C0E;
	Wed, 24 Jun 2026 13:49:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8503B14CE
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 13:49:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782308947; cv=none; b=mg43SIuk7JkCv+T6FhyJGK4vIl0yP+nAgk6iCkPKuKzJFYOwgf47E2TdRzByJMkmkiRLpZkY+IP4dKtqNA6sR1ObBj7Z4qCVeE/bxDLfYNXtIf7Ro7/EEFZRvp3LlOwnzuBhLLGzGo46BRbjedoFJbUWjsJTVCyEEqOvypTM9Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782308947; c=relaxed/simple;
	bh=lbOJr8vNF4o5eQxkVi7i/+7YOpdaLnzLqUqUbwV3fSg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rA7mUFlLqf3CLQPo4npa6EKAkedYbG4Z3dvmgRNc/olausvZkV4VdVJi0GaSFKT6rzAxpO8f4BS57mMj5E9JO3+vBt6VYwMHaE2IMuu0daZQE0koTxmo7O1cEqsSPwu8ri5HfSwMtyqApBP6tcIhIswTO54Ku7y4Ye8O5dCY4KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q2+ubZB5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A43+KDA3; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OANRWX2501699
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 13:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rmq91jkGvneoxWerkaeuBOohJIvM59ypbHsXw116sQI=; b=Q2+ubZB5zLNJ3dOv
	VXFh9X/7hoSGO1l1JdBxrUF/gifl7W6QphUEhXUr8DjvdHJz7ZqGzRspN7NsXxld
	j69LW9pb+XnacD+uchFMTsB6McekZ3ULqM8sbrG9kjKlMvbgdjAI+iEj7ay5I0la
	Mq0d8QG7QXSTjM+MlbuLTl5jOJTVDZ1Jp75zUF3aGf2dqUwbpta7XWY//ii12VGk
	E78v28XA19CmSpUNaT4ciJF1e17SrO3go3+q5iftE8n6z5wo3MkZFwKiRljlRhB2
	RhHVrt/VQbekpQrULtDSGOZflqCqUzg9AN2B2ffx2EmWO+QSftX71erse3iVguOo
	LQ0tbQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0d450vtq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 13:49:05 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84531eaf8a8so1649706b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782308945; x=1782913745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rmq91jkGvneoxWerkaeuBOohJIvM59ypbHsXw116sQI=;
        b=A43+KDA3iFydFtmphn7ZIUBR/tVKzgp3wY/7PYvD+wAVCNCmUdeMSOYz6kEN6bEX2u
         tUszKMATQx07jF6+OGj40P0ANc9KXlSLT8yFYavUB4EdSVVUJjDL3QSDsZPZPnbEqQod
         yNZG6agPNrIqY0jzBdKzgQN+hccW6m874Jtvr3zeRZQH/bBDA/kcGZ29S443/drc1Dde
         yZU3scLjEV4lZqV7ObSWkWyUBp7uXgxC16mbHjKxuzx/KBalibZBo65wyS7QGfF15T4n
         ndtN+ub7mv13xTRRfWjV5RR5BTtx+u3nsNH3Fe+prZCNlszyMIb8xZuTHgCwSmZ1KTKg
         3wcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782308945; x=1782913745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rmq91jkGvneoxWerkaeuBOohJIvM59ypbHsXw116sQI=;
        b=ATEASv7R4W/WJuLR4tahleXFe/V9EX4ekg7o+4ZJD+JmLnPYJ1sURY9iL4mh4X65Rs
         TpNRNDpze5Eeb2HP+xhBMbylP41ebPAN989pRqB3Vkoea/XbciogmVcRt0yxx7aZFBdF
         Mp33qgU2a7ijCPU8Bqa7ozlTnhY5BjG2fYNyEG9Vfycw89uU/XFkt+x1o08WxVDZlmY8
         Pjr1Q7I++1e4E3IArerBZxyZqOF27j0UtK8c4nrMGeN9hXYZ+sDFU0EmFFHmNmduLzZu
         ugR4u0wBMcLcmwd5jTReSd26/kdA6y68baJnPpMZ3Is1+3ypLxI9iVasvTuTMii3V1y3
         8trA==
X-Forwarded-Encrypted: i=1; AFNElJ+DltMYa+PX235pelY22EcgPy7O7aeUTCMNx5MFN3j9ayqGDx4opzOqzci+0ZM1JeVRhrHmAND6jCEc@vger.kernel.org
X-Gm-Message-State: AOJu0YwJTXJ3IR1A1Vd/jAdg4yr6+ajUh9NbB/BBwP7xk3v4+OTfycxD
	/HMUgTId4NXFS612nrl7IcZYZyi+gUJeTeCK5AUS8x4T2ZX4RA0wWae/7vXSdT0Ma/0L5OUjpU6
	KafLEuYjl+9Qzmv/XakB8JxzP/7KCT3C2ou/iF48Qc+VTzLo3Ir9SYwd1a9V8JOtc
X-Gm-Gg: AfdE7clKoPJOhQ5C2pSRJRPIjIbGLGVKC/8kN2FQvtd/JBSARYfaw5gjDDS+o12JvpA
	lFtdcR/e42uOSsi4OaWu0mu1z2egaoabruKQVN96GvXnEQ6mhPrcSUhVugdmuSBkaYlRcFDm3Vd
	Zfd8Q4lK+P8yyIDlwwBTX/V108Po+z0jqL/QByAsIjfb1g0dCp8ijXQemBcjWzMOCYvTo2dTn21
	ktvKB8XEyJ/oNXSCziRKGOsQfuC3Na+YoeuPGTSdPMUzmpzCguUbFiZbQF67PBpg1svqT/Z7bRl
	b7DQ+NdS+au1gBHGfgEWd3Cf2Sd77BkaIWTRUj9EhafYm4MaEm3IHI0OWilv44hQ0WcExZ9SUYW
	guy1Yc2VEM+VAggPqjXGQlnhx+gp6cgGhkVo7QVuvso+PUoAzSvyAsGdus9f41Lyqk+YhpC61QB
	5s
X-Received: by 2002:a05:6a00:2e9f:b0:842:54e8:bdd with SMTP id d2e1a72fcca58-845a27b3f69mr4833574b3a.40.1782308944534;
        Wed, 24 Jun 2026 06:49:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:2e9f:b0:842:54e8:bdd with SMTP id d2e1a72fcca58-845a27b3f69mr4833511b3a.40.1782308943973;
        Wed, 24 Jun 2026 06:49:03 -0700 (PDT)
Received: from [10.133.33.213] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a4127bd0sm2280981b3a.53.2026.06.24.06.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 06:49:03 -0700 (PDT)
Message-ID: <f39ec59f-97c4-4d5f-bf02-560adae312d9@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 21:48:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: kaanapali: fix traceNoC probe
 issue
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@arm.com>, James Clark <james.clark@linaro.org>,
        Leo Yan <leo.yan@arm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20260624-fix-tracenoc-probe-issue-v2-0-786520f62f21@oss.qualcomm.com>
 <20260624-fix-tracenoc-probe-issue-v2-2-786520f62f21@oss.qualcomm.com>
 <f0634a64-1141-4ff9-9033-825e3c75d28d@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <f0634a64-1141-4ff9-9033-825e3c75d28d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDExNSBTYWx0ZWRfX8CG1gYcIl8l3
 b60QkvGYnKqY5CeFCN5m7HszL/a0OPQtdTwtMakzn928w1Ubj9RXdvZvdt2heDI3DQpz0HI/3s2
 Gyne3p3nY9oNjRg4eQX0W035VplwKcFf2L6jA7ZeAAEgVGxnuqkzoGWFJU8yr8nF3Kzk4aVt+6v
 4VAKx4N9bd1hiYlioDVpaIwub9bOxz3ieH++qlbXdlJx38OOcQwt0h+KcCkEb9Vcd2NmxCiaTxg
 7TIdVg5p7csEuhBGHCGeoypCoqWKLaclPpb8qr5QHSlmsYPs4a0otDG82TRn3tvaBq/4ghAvZgJ
 5PIr3S/cxFcRgIlDvG0pdfTd6tmVnNVbxfgTJkSMUYyqlEtifyMRbd0BExoGTodnMJMZl8gogPO
 tJLRK65AITEMYvFUgtLIkQbLAgz1Crun2F3BmLux9cKkXRxOmNpEcuOFuwQ8v8DLCVVge7qMY49
 mf/Oot1TPIKJuquz90A==
X-Proofpoint-GUID: -HsnrJkIYQiFojYdOXjyHGycMtwi1HgJ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDExNSBTYWx0ZWRfX+Jdlv/dfaWvR
 WmouMmj5V8cZAtaVreOvcRgFE8vxddpMHjnWt9YwXguAmLKVcMAJuwpLwwxCxL5xEeupnSov/2M
 WS1tz6uUp498Z5969DuveVuTTlpUaHk=
X-Authority-Analysis: v=2.4 cv=Ar7eGu9P c=1 sm=1 tr=0 ts=6a3be051 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=t96WpxVnkgGKFerJHPsA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: -HsnrJkIYQiFojYdOXjyHGycMtwi1HgJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606240115
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315253-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tingwei.zhang@oss.qualcomm.com,m:jingyi.wang@oss.qualcomm.com,m:abel.vesa@oss.qualcomm.com,m:suzuki.poulose@arm.com,m:mike.leach@arm.com,m:james.clark@linaro.org,m:leo.yan@arm.com,m:yuanfang.zhang@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:coresight@lists.linaro.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A7006BED9A



On 6/24/2026 9:27 PM, Konrad Dybcio wrote:
> On 6/24/26 11:49 AM, Jie Gan wrote:
>> The AMBA bus attempts to read the CID/PID of a device before invoking
>> its probe function if the arm,primecell-periphid property is absent.
>> This causes a deferred probe issue for the TraceNoC device, as the
>> CID/PID cannot be read from the periphid register.
> 
> Why does it probe defer?
> 

For an AMBA device, the periphid is mandatory for probing. In the 
amba_match function, AMBA attempts to read the periphid from the CID/PID 
registers if the arm,primecell-periphid property is absent in the device 
tree. If this read fails, it returns -EPROBE_DEFER, and the probe 
ultimately fails.
Most AMBA devices expose valid CID/PID registers, so specifying 
arm,primecell-periphid in the device tree is usually unnecessary. 
However, for the TraceNoC device in this case, AMBA cannot reliably read 
the periphid from the corresponding registers.

> And is this required for all TNOC devices?

So far, the TNOC device has been added to sm8750, Glymur, and Kaanapali 
platforms, and all exhibit probe failures due to the same root cause.

I prefer to fix it on Kaanapali first.

Thanks,
Jie

> 
> Konrad


