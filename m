Return-Path: <devicetree+bounces-323944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YXpGHIjdT2qTpQIAu9opvQ
	(envelope-from <devicetree+bounces-323944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:42:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C68BC733EAD
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:42:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=S7BqmBXk;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Rpi4SC3R;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323944-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323944-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 582D130C95C9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A094DD6E4;
	Thu,  9 Jul 2026 17:38:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB904DB556
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 17:38:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783618736; cv=none; b=oLVsV1o7KFJZhOEzkzJ83wtcnmz0hIYhE4BdXrqQqZVEDURXa8XGcY+9QBBiRLOPhfSRSeTUQ5P8It2U6MtKZqjZJThwAElIZ/W1CitcURdDHyTXrDQN5INWkIqMO5YwY/jv4CnrwC7h24kMoZnma5E/8OxqrcZmBKi4UbCLGLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783618736; c=relaxed/simple;
	bh=Otj+Ou66K1WiyZij5ow8vaYwP9joE3fwu+rFitiPLkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ek1gc+ZQAO3JuT9jubUmILJUFv/mu7ow6x7gxKyBIKww1DghfH56HJdfeRr7yDU+KHiWDWrlmS+ahLvJ8VZx7jRtOfJYKAESBtfvwNGFDtYpaOaYCo4N2rxIG+yxrT8rvIEg3HOExmFPfZmPPMlU2nTpqoKVPe+FEhPSU+0iy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S7BqmBXk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rpi4SC3R; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669HXk7H2330610
	for <devicetree@vger.kernel.org>; Thu, 9 Jul 2026 17:38:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Otj+Ou66K1WiyZij5ow8vaYwP9joE3fwu+rFitiPLkI=; b=S7BqmBXknonuus2B
	bokEQyvjHPh3eh0svkg4F6IERNXIZrcQ81wQqJqybU/VpnU3pTEwxuR6PKCNvjR5
	X1GNwHjLGWJSYAUgWpU6/M5nXEzamOzky2urANRYiNabVAzOjuBFtJy/dXLlux6T
	D2+Yn37C/oCvHlWaiJe7yp8KFBg38umAcQzX0ZPu26tJPoTQfL5gY+JmRbkEDA+A
	Q4kEwX2+CYV7704In2NjT1u02zuGO9PTEGmBOFEBaeWTDXOIPi7BLfgNDqJQUuKO
	dsfxBr7AmOt7x9iBsdlAJeFc7ZjMCX2f9yRe+eiHZoNM0242JkCgi3mz/mzMl57K
	EW9HyQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faf24rdng-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 17:38:53 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8dc607c8a54so2331356d6.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 10:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783618733; x=1784223533; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Otj+Ou66K1WiyZij5ow8vaYwP9joE3fwu+rFitiPLkI=;
        b=Rpi4SC3RPPuF9kWrS5MjYK9eP56yjwICGe72O3HujaUptpzxKaDk0Kqe4CY7URtLIF
         ynQ3oE4V5PDYj6i/yPx3ir+pKDhMDJt+lchs9CxmvLip0fmQC36wEYhqbMkXa/n7zLnZ
         A07HC5ItomyT/CSHev1zDrvUhSfImVsp2dq0txdB3hKidK+tGvRlvh5MUfi6wHivmAYf
         zYC/hT3RxY7/hEbz7SPsUjLEXaddPjm+0FvMCVSgf9Omc405vn2PO15aNpcA4Y8J9IZZ
         zkuVH0aYUWq/HNNY+hv7/dwAAbCITiqHbg4NHO6kQ3WadWAR7pRCy3BQTeLrI70hOvG5
         qkLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783618733; x=1784223533;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Otj+Ou66K1WiyZij5ow8vaYwP9joE3fwu+rFitiPLkI=;
        b=ZC5s22Xojz+fmMOVJvLn2EuL4KHHY8syun74PG2HLosjMzzrS6yNkv2nKhNOdjR+NC
         0e4pXYWc8Kw0ZT/raT3AnH3cK3pLsmIy7q39ZUApWLVoQq8iLCVmrp11lKzKAg24WKYm
         YavB55EYhUlZL2K1fsRTQ2qm47lz7CD2vAGML7QZ3I2imaV/J4QuSkkwSeMI+tETzOVu
         U8rwNwL3Fkr4xJrPvtdxdKU91F2q2zLRtV+rHhGM4Cz+4IxpUcFPVCxZ26SJqXYo8zSz
         8FbRT98rOJnHgUT4B+hUPK7QFC3CWD+Nigl+Mq3FwjHTCo1dynzwCXKzUq+94AmuG5sb
         xrYA==
X-Forwarded-Encrypted: i=1; AHgh+Rq2R9lMFt/ggut51SRCcs/1afewRaNv8aZo03EbXWi5FpITFsE1dJQ6XGRSAHWj/67vpiJDZm7H/2aF@vger.kernel.org
X-Gm-Message-State: AOJu0YxBPDdrUHW+DQd1958CAs8+/JoRy4Cn7RQrn+vOvWG3WgiYR2W+
	SKw9HIMmR8GrE9/Q9Q2VGWsIGXaDpLJa4OzSDr3wshnYy8g/OPudhSzqYbp0lR5mL69nQVRRjSf
	+aOEJgbfI5Lj/Gkkr4hAXq3LSO8q2tx8wck4VRKQkac9C2Ps7R9XrjOuhB+BW8DaFXCUpy5kB
X-Gm-Gg: AfdE7clMCwtgIZoOLNg2w7ZBy3a6f/NS7Lhmkl3rzv+TObJBFGpJNN7y7mbGcYwD5JQ
	xqoCYw7IFbwXSsPa2TIawhgqAN79gz0Sw3Z0Nkd7KliWVoDtWRjIu4miuBc1v1tquGhVyO8G2zW
	RfFz33PKp5uMa/+2cwsPjhi/laQ8sGTBpVuXBzsTizZmoBGwOQ8H47GFRJ7Mi/iDHdV8OGsk4uM
	RgOmWM9XSItd9EPa/EE/qgi9sDTQZ1i2vrIv0VOWnpisINpjQqoEhlOO1uXLp4YLnvY70rZVsGL
	wHDBC04mAp3FQFtzR7nzqRzZ+nWMQqcbesC4CxwPdM7BBrj+cgqce/CXbFWlPz10o493wdNhgx5
	aT86AI0weXJWmMkrdrtTp87CCH8La7ouBcVSwYkY=
X-Received: by 2002:a05:622a:2516:b0:51c:239:42da with SMTP id d75a77b69052e-51c8b2ae69cmr86002891cf.15.1783618733375;
        Thu, 09 Jul 2026 10:38:53 -0700 (PDT)
X-Received: by 2002:a05:622a:2516:b0:51c:239:42da with SMTP id d75a77b69052e-51c8b2ae69cmr86002651cf.15.1783618732976;
        Thu, 09 Jul 2026 10:38:52 -0700 (PDT)
Received: from [10.204.141.154] ([213.55.184.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm50653065f8f.23.2026.07.09.10.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 10:38:52 -0700 (PDT)
Message-ID: <d48e0062-a3f3-44ef-bf93-c4b9a4533961@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 19:26:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] dtc: dt-check-style: Expect first device_type
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20260708-dts-style-checker-v4-0-c175e6401150@oss.qualcomm.com>
 <20260708-dts-style-checker-v4-4-c175e6401150@oss.qualcomm.com>
 <20260708145208.2E17F1F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260708145208.2E17F1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JrbZbAxJdkE3fsSVxmvJGSwEOQz9GQXL
X-Proofpoint-ORIG-GUID: JrbZbAxJdkE3fsSVxmvJGSwEOQz9GQXL
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDE3NCBTYWx0ZWRfXzDE3H3yBlJDX
 8Td7LwDXHsmVeEH+a60JAMSS1T68BoMgFw94jbW1hugOAn5zl9v/tVn7e83IJBve6f/Fl5FmZbU
 DOU7W+P5ErPT49dSBbWfuS7XHu3J6ME=
X-Authority-Analysis: v=2.4 cv=daKwG3Xe c=1 sm=1 tr=0 ts=6a4fdcad cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=nvVmADDuAioZMzk/ZEnfEw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=CBG-wTykhPppQsjVDvAA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDE3NCBTYWx0ZWRfX+YiBiOIoWYmC
 1ttZqebAVEHQZwIihklwtTa2wdY8nqdJvdpE403rC6ag+E9IYfzowFvTlF99lah7bCL4AB5+who
 owjFPey35iD+Aq9spbtCSlvBqSJd/wEZgrLvaO27WFrjrFBXsSxHVYlt9z5M+FB1WX+RFTWKMCT
 /cLSg/VRS0HJw+e8NtpXGFcZDuHnaiHX0k5Gz8Ws0ZcK7sgLUw66hb4qC3a992TEngNikqzsn50
 7WbD2GPqCmRBJiSrtIvQ/SKFcvco1uOFRuJW1OXVDjHVYYKKXurjNMyL1blndcu0hrXpYsg8NXL
 wTI3AaUk97a/ODWQY1Cyq3YQDYuJcx20eDKEln7/8JsFilApU3NcQHMnt0HnygPLOxDNgWABajS
 MRVlVjnzyY30GJ+HfuWjTw22s34YoDUGgmt6NeIkc3P3UaTNc5XjhYdYs7H5oj7qja/pxrOD8ap
 37liJk6RKRmHrwmlUBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_04,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090174
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323944-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,vger.kernel.org:from_smtp,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C68BC733EAD

On 08/07/2026 16:52, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [Low] The `compatible` string in the YAML example does not match the schema constraint.

nitpick

> - [Low] Copy-paste error in the comment of the 'good' test fixture.

ack

> - [Low] The docstring for `_property_bucket` missed an update for the new `device_type` fixed slot.

ack



Best regards,
Krzysztof

