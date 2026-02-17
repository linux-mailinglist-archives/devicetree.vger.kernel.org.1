Return-Path: <devicetree+bounces-266145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJtHHc5olGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:10:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E83CF14C6BA
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAEF2303792B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A97035C18C;
	Tue, 17 Feb 2026 13:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y2fGN4Rk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VYHUhW4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA15435CBD4
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333683; cv=none; b=YIuVyX8kFxu2vlSmGtWL3cTAhz5i1vnFVQjiK8MYw0Un3WSAjMmsgm5YBXw4r9fBuPIJjPYTzwfW6to5bfyQPcvEX9r55d+y+CjBZnz6XfKn8a9AaaSq6dV641La4gcixGGPDDFpDbHu3pQYN1n+8YyEioAaR93gjp2lKgFYDok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333683; c=relaxed/simple;
	bh=wL5VuiMiqYyh/wwnpJVu5jYTCmuIX0jo1WMK767HlLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QM4oHEjKjZ4nTpFW+4S7Oc5zkc/dd8aKNzTZe2Vdp4Zr8Lcr4JNlNcwniSLOYrwmWDXYCoKi1DFV0UvdjSa3zx2Vzq+OTrzvQEev7DOX0Ym5JUebOmsyMvPLWKBLLw8vHi2I467MITK0yXCXx2mFIZQH9YpWEeUpHyGDVs5fgHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y2fGN4Rk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VYHUhW4+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H8vqWh1601378
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:07:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f5ADTz8P05lKTT/ohdOal7Q2OxWIqe1+w4fGM/g/gWw=; b=Y2fGN4RkiBYJKDwf
	MnSGehZf7bbloRchb695Nm0irew8uxxgpDhSn3f01W5vvsyKw53ohZUu9AmCzeNc
	cC2tnxOLd1ydycIHhIo6ICPq51od9OcK/yVxnYSc/KnsN1rnmho7CSvnYnje+RsZ
	rDFa4q5lxV71dEJrEwnsj6iLkCpfSCNZVh6hv+DZnMsaQMrJ+i6FHv8vDAumsD8s
	E5fhYhy0IXFcYRpIn2f0xxaSxIiXJzHNWFgPLLi4kiQ89AIEJtGXZE7onfOVMrFu
	CxQydh5+dYEqOjRZ5AoIY78KVhWpdjg/EWtVcRP+NReV5A18UwR6l6WEtZvZN9yj
	pb2JLA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tmabkq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:07:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb38a5dc3cso265797785a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333678; x=1771938478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f5ADTz8P05lKTT/ohdOal7Q2OxWIqe1+w4fGM/g/gWw=;
        b=VYHUhW4+fFt7Tm0TyqGdcvvJUrrb75XzdXsXfW6LnLo2+u56M1xjhaUjWTCpoXMJl9
         WpefzcmjlId+JCA4x1jpy4KCWGNJ9WBBKFTF6tm3M+zKDodWC0dx3bQ64y6jbHZ/6h8a
         kWY/QQIMTYqkfg8UU5+UTci+t/Npz2/ATsvfkwQ64CtpEtFVyVaHKwCbqjJ7STCO3X3i
         9EMfrB7zc8+If4CNMGrhta2A0uI5dJ+gPU9qgO4sxQC3wcsd7LvP1a0SkX11P+tC2pA0
         scv1lobxRGS9dgFDWjQTHBACbIsKnh8bNaMsp/ksyR0+A6m96bbPCwi2CjeKJ0GdW7xO
         FtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333678; x=1771938478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f5ADTz8P05lKTT/ohdOal7Q2OxWIqe1+w4fGM/g/gWw=;
        b=HH/LMw/BK32lCKubvKVHGvZif52AGnwb7geF4OoQ88qfOyPpKF7kC3a+NNHoKFXg1J
         lUW7Lm+ybmvPX0WlLotE4VPe0MVFkdw12ppF650d0+zmHcdNuBTTWrT7WlXSVNGE7TQM
         5uEGIGOB+SFd11DRc6GqTYjugAUYchyKa1+TobdVZgTqPjYgeHagsROCm0S3Sreex0BY
         h/iy8CLCgVpZyzJpugrhZbheMtWeSbR495FuYFOpj9oU1OonIvSxzb1kRRNw7i38D749
         DpCZBmOcQEOsxzUd7Jq46WCVdCer9Q9nL1r2Mp6SJ5osm8Bv4Mk0DLpq06yWP0ApjMO0
         k0FQ==
X-Forwarded-Encrypted: i=1; AJvYcCVT127V8/zLTilam/iF9pwOKUDXuNjy5e1tLUncH0ypbXDYrkEiB2jOTu1PEHeBcl7/Uo70vlEFzaQN@vger.kernel.org
X-Gm-Message-State: AOJu0YzE/pRVIlXkhmT7oXSf734Gxa+9nt7XH7Vov9cYVH6ElTDCD5hJ
	uixb4jKxNPVDdb/IZ16gZ5VYWHwOXYGsgrQZGew2vgGhSaxUi+vRd0th0AH/UDfkPVoh4CTb2LB
	etPjH0Kseib/W1sPWO1bMBEpx/CnQAp1N5VYJotC8JnXjaA+ZGCpfecMZnT6K+H1i
X-Gm-Gg: AZuq6aIOeOceKkq5izC6IwJoKrXTiueDeJXx6gztnxChg5Wn7TcK/WwYiYTwUtZ6NS4
	ssKGiZ7cfOnPwVMYKApBbIN/fBvwO6vGStgLns03KT8L+ZnoVgJdriwaFLHrL4scSNxZKmljfaJ
	sFjQDSV6Rtda5NI7AhqwyFpe0F9veeuztv6hZOSkC6EnmC3PWHmmnJomp1L3LCbSc0Ppi5snOyO
	bxO+IeLxkoEYsNbKseSXuwNH+wZHBtqpEtdFVEJur9NqRt8AS53lzt4AC+lMRNt3g98xbuufYg7
	Pz9Unb/XangMfvC6kExBKQ1bpuUYaeA1MRQ+Yf5kwMqY0zcXnxJ4NYU693AiPx9DFlbAJhiJFwW
	FB7FxC+5KjJK876VS7T4oefgdA3Qy6JByh7/yXotxJvnCfor6uaUfYckUzx7ZBn/Ea+uC9N/T+G
	3BAh8=
X-Received: by 2002:a05:620a:4441:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cb4084bbe4mr1357954985a.4.1771333677940;
        Tue, 17 Feb 2026 05:07:57 -0800 (PST)
X-Received: by 2002:a05:620a:4441:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cb4084bbe4mr1357950885a.4.1771333677349;
        Tue, 17 Feb 2026 05:07:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e356asm2383640a12.16.2026.02.17.05.07.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:07:56 -0800 (PST)
Message-ID: <bc36449a-c523-43b0-b2f6-fa8eff13a8e0@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:07:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] clk: qcom: De-acronymize Glymur SoC name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260217130047.281813-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217130047.281813-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EMTmrWk8rDg62__b4F6eVlVfsfIR5DnP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX1XnyDJo6CffH
 Qg8KvUoUTn9cIeg7qwc/+L9xVAkLJyx4qkLi93GaAJ20tCAHHbQWfd+48BPt3Uz1skMpSCYkGf7
 10ldT+hHDk68UyC33I1ZpV6HMA5dpZClHzuASaNDuxZygsvKs+5f80k3IHeNkyTESEUWLLojaDB
 P/uAG4y4sirZCZlGWR/7HkRC/JVk/YCW6s6t6I8KJb09HT1FFrdzoSwfywebs7e3P2fRBCmcFDk
 11zqZt3SFY2s0AHdQIu8A2LgA1KsQC0IybKuQuxsj28Fedewfp/+QWg12t8aAHR6Sge0v9oPT/w
 EYeyR8UzyXUIhzu8I6X4wfyIDhwWoi71u09Y0ajieimV5OwbSXCJOPWQ1lEzEVr1Imu4HTAwWQ8
 z0X++EjrCaOaVVgOaPF19sqpnhBJFK789rht7EbyIJbvWkF5InAcVdTuJomI0JYqdrN0HfWWdmE
 7+DrL29XK6FicRTyKGQ==
X-Proofpoint-ORIG-GUID: EMTmrWk8rDg62__b4F6eVlVfsfIR5DnP
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=6994682e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Rh8BIR2qzSpX2dRZ-WwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266145-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E83CF14C6BA
X-Rspamd-Action: no action

On 2/17/26 2:00 PM, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

