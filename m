Return-Path: <devicetree+bounces-258628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHzlOWWMcmlJmAAAu9opvQ
	(envelope-from <devicetree+bounces-258628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:45:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE8A6D84D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EEA213008C26
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8530D39F31C;
	Thu, 22 Jan 2026 20:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BfjEyI6/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gUXmxQG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3746B3168E3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114723; cv=none; b=szaieRoHE7H62LRkiZco/dYnXRXuA0wm+Cj2zmaraZ+adxBsCREVleH8kH9LzyqZclq2P8/2+xs20MAf1jFCtyjSJIZ5cP4glDjJerMeVIomReAnFtcSxb0dnqFQlGhYCYLduVlxWMztahvhm6Q043ry6BAMKPD6Px650Oyf9gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114723; c=relaxed/simple;
	bh=e053xQVQfDuzXcqvzyjGaXUOGlr3Sos6Or+hMUSVETg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dABAIaa9rHK5sqR61L6FS31E1KVVyyifbRNDUICyDro1UrnXPkZnlwFRGM0ag5d3QUVDdEQZwEAIxzR3oN5esfVL1i1BE7j6dSG8TMYUyawQL7lYJmKvYZuC7vtYbENVBYOPXaAWHd/lP1JtkE3aqVGtwuUKKhe0YCB/+OLhQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BfjEyI6/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gUXmxQG4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MK7chq3126261
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:45:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e053xQVQfDuzXcqvzyjGaXUOGlr3Sos6Or+hMUSVETg=; b=BfjEyI6/Z5AITe0O
	tCNdzkJ6tYFKpkVpKbZrzJP7jgvDR67SFTXGIHB3OZMkUyt4BuwjIMt69aXMPwu3
	Ok3mwwQDlGWrth1FDqaoA5pILyvRef6JaAhJI0gsJLdBMsprv9+KLIJWcdB9xrv0
	RrZFQvqvaEZTDLylwd5DxAN+dfp7opaFB+dOvgc/zcx4Cr4smvVguViSzdDRCN9f
	coX6c1+g30flBftCPCZ6yO7Db3GC0QaFv0lo1d+XMgSS0FxAYGHObGoWsFyRJbB+
	QKkCAZYJ46HNimbBZ89DF1Cf1b41SGTm7jKPX+60rJjA4H3n/GUZRYnK2cBC8yfB
	Iwvj6w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buthdr3xv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:45:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6b137e066so43189785a.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769114711; x=1769719511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e053xQVQfDuzXcqvzyjGaXUOGlr3Sos6Or+hMUSVETg=;
        b=gUXmxQG4pmTRODPtR7P/YNNKYV6lwioqYHKDKLRNVoBDxLUjBRCvgpFd2yK4rwDGPb
         8vleeMg1jDM4r+VI90XE+2P5v0mTYlKp3L34SJ3icjFtDwJtwjKTIx+ZDMeAh9+UTs+g
         SYIhBbUCEKTaqIcj7vKJ6V3fkvWpzHruIZjIKLIdqmzecFVv5N+A8k6BD3lnbaoemk9L
         0nLzSy0dgMvWmnrM2WoMBZmLmWATKGPQYDYi+jcKYfN2Lhxr+O18WwftlVLYvL4VOZdf
         ndk1JkXusY57yS8i6n5OJHAp7lCskULBdVlofa6YHlaWdVgUSquCAPBYJ0F8YlMq2AbR
         WjcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769114711; x=1769719511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e053xQVQfDuzXcqvzyjGaXUOGlr3Sos6Or+hMUSVETg=;
        b=kE8nenvR/Iv1X9jIIsDBHEe0I+iZzhW+gbxD1WmAP/6mYLQM+avRj3Cyp8bylsW31K
         SeJb6qhgAI00c6PC6t8HRYkB/YuMrTsAApQnh7RuEPD3jzGuXb96xXP7UgV3i3xEasXH
         vVQjXugNC+rXsGRwvXcXmKdlb+2rrT1REx0VYcxv/fDFdkneO3mmPgh1cUEOP5YdGBCV
         u2xLBEqiN8MWD7MuIcdDNoAS2aHYd/aaIlXa/h/5Y0fnavlHQg9wTtK1hXP591fCpMSG
         L5HJNA/hfHT5A7kTcNCvbMKQXbR5RgJ1ZAfJMpRcGdyXGoBEbqr5LYQ2K4OJSLHlioKh
         mH5g==
X-Forwarded-Encrypted: i=1; AJvYcCUtJU6VLQgbXdnejDMlCjRmFroy4J0lJt8TCer630jbX1tcUhkAMDYkEjd29i783bxD6SYS1UqrX510@vger.kernel.org
X-Gm-Message-State: AOJu0YyE6Xle8GYPj0/SHy5J2Kl98mLY+IeMEuoMx6geLOHfLdCW2NW+
	0M4Nu19Hy20oR9w2a1ZMMxA7g0nb/Fm8ay4uRrNWR1QgBZUCeC1PrsEaD723mcRpTre+XVMxrss
	AJVmpRbB7ekba7qx0Dy2H2ttYYkdn9vjY8TRJOqNBPCsegDwlozjIFioVzp5VYXMI
X-Gm-Gg: AZuq6aL/MZl+IDrCwoeJgXgKlJJMc6ZCKzaTazJHgRZjQDJNXNwiKMT1+rc6a6PteFm
	qRDJHJCF78IvyIanor2ipMOghe88gDk2J87QueiELhAqRNSKpj79lbkQgs2Z/MriteSeTS/dT1+
	be1QB2TlfR8AAh9uBuWDqsDm1/hKQBHF/hbTgszCM2CHC0AiC6PWp0/7wmX8QQMy+Enqp0o1WJp
	A1hczM3qRPmtZXRbq6JSnTr/cq+pGNZDX+PCayVb27M2A6767UOWACmlQkTF76jH8Flofvzaz9k
	DdooQyPuw9Ou2zsPQz+3Z3QAUDmnwix3HEYxXC+nxAVym+WRle48p9mfgfXtRyQmpqQ9E/LKLBn
	+Wh4Busc3SaAQqii2v432ICOC/GEVtgUDzxJNQmdq4KaTMHzLI40Dl5iGHC/cAtllzjA=
X-Received: by 2002:a05:620a:2a05:b0:8c3:9ae3:1a78 with SMTP id af79cd13be357-8c6e2e6710cmr76300585a.11.1769114709977;
        Thu, 22 Jan 2026 12:45:09 -0800 (PST)
X-Received: by 2002:a05:620a:2a05:b0:8c3:9ae3:1a78 with SMTP id af79cd13be357-8c6e2e6710cmr76296885a.11.1769114709537;
        Thu, 22 Jan 2026 12:45:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804daf941csm1874995e9.2.2026.01.22.12.45.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 12:45:08 -0800 (PST)
Message-ID: <6aa11c4c-3158-40f4-8932-8852e949c9bc@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 21:45:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <20260122-upstream_v3_glymur_introduction-v6-3-245f408ed82a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260122-upstream_v3_glymur_introduction-v6-3-245f408ed82a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDE1OCBTYWx0ZWRfX0Rrqa16axiwp
 xx7Tjcr0c2V7v9B9dxAbPVDrW+9/OdspUFqJgVxjLxdWssgaEdGnUGxEa8fb+p/WB9qQvOunzbM
 ++CCUWQTD4eFrbmATgkUN6L4nVlXGuCo2o1gbIAck+P0+akMSZwE1XCskzFYk2WBWkjv3UfUVZ2
 8q7PHI21XOaiRPrpaDSibz1boh4v/XcoNE7l/jAbCCU2RbwJ1yNO/P+QqL5jiEq+1p6avsG6Rh7
 mcpCDeJ+neHC4yta+WcyC1GoEIrsizEKZBJhJqG7TSGxkX71ma1ji4ENww106QSFrq5wEBizs4F
 7hD9g6CqhWCWbH1NPR0DYypCV65WhQu9kjhouk1UMAtX8prQzv11mRM7/XCueLmVGS9UITOnjVF
 Cc0cleGsl5ogu5iUu7+go1m5l4cj79LwgdK9USh+NNp6kcQb4N56X3DA5ddVGhYQkcqbYCXFrm1
 9/5+si3hTOCsXcaPKBA==
X-Proofpoint-ORIG-GUID: SieEWqim95tELknwdQjppN1pFLWhzlfz
X-Authority-Analysis: v=2.4 cv=XauEDY55 c=1 sm=1 tr=0 ts=69728c5a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WBtusvWCBdKd7OHYwhMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: SieEWqim95tELknwdQjppN1pFLWhzlfz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_04,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0
 clxscore=1015 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-258628-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8CE8A6D84D
X-Rspamd-Action: no action

On 1/22/26 4:24 PM, Pankaj Patil wrote:
> Introduce the base device tree support for Glymur – Qualcomm's
> next-generation compute SoC.

Modulo the trivial bindings dependencies, I think I don't have
anything more to add.. although I fully expect this may get some
fixups as we go, which is normal

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


