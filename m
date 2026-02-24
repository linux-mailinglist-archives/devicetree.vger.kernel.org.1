Return-Path: <devicetree+bounces-268035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMR/A0n1nWk2SwQAu9opvQ
	(envelope-from <devicetree+bounces-268035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 20:00:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B222C18BA1A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 20:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A94230E6FF3
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7A32DE709;
	Tue, 24 Feb 2026 18:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MSHoAMhs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ivwoH5Ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CC02DD5F6
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 18:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771959424; cv=none; b=UPB0/njVrYtQBHw//E7se/vItHQF9mioD9NQgUfCWmnbzNd2xmlYkxwDGfdvF2qxt1joGXSQMlI2mzUClxCe59uv5saTT6EsknDyiR8L5obVDXhnNMKPUdyO8G7HWthLvL+6h81NJUicGYcOySq2EYeiCu1rA1ZXZ9T4nFMHjpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771959424; c=relaxed/simple;
	bh=xMBf6NwZPkPmYjCF57EbzBnt/mmNyOP7OZVt2TtFFtw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=DS2crL0G9Bq3L4sKLa763eu5Dt2+mG5vrr5rMtRzgfRoX9SrnqKUBtmvX+eaj3xNuUJtxcaIM07i6v7bQ+hUPC8BiTT7rKx5ydL4rRJOOLdmKUghZJeP5fP2oGii5bfTvLXsNT+yZAI6fHhEK8VT0p0JtBIAQTE4zZtNnLTPkaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MSHoAMhs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ivwoH5Ko; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OH2bSE3660311
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 18:56:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wcBPkTiVH6T9XFAe2YZivXldQdsHXSAgNP1fgvgQp+8=; b=MSHoAMhsI7Hf1Hr3
	DWKHwECHXWxA6jfRH7MWlUVkH5uUeiUDHg6PBVjxEpVixSUSOM6R5UyOkc1o1QKd
	SM2V6A3wYqoOIVfvWIwVYQ2li4puLn5HohjQtGXGnUgx4aDYGpjW4DoDC8LxiHNl
	DzhuhK3z/KeGCgxp4/m9FMrilThet/FWz3FJROpiyBLDF3yyEGAaEc+NZOgBoNuU
	55fCxHN5XOLoOuAEMewGPbGReZNW9E/EzUaZS4QIywarPbAtQ6w8GL3St1I+LwGY
	Pi9XXmMn4J9YhGIGn9almtcDUiaqfbmJEt0UEjWvBV5U8Ta53sLN2cQrqHEAIIS+
	au4LXA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg1s8eaq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 18:56:57 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ba8013a9e3so6570480eec.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771959417; x=1772564217; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wcBPkTiVH6T9XFAe2YZivXldQdsHXSAgNP1fgvgQp+8=;
        b=ivwoH5Ko5nxNlezPPKR5PKilFndJ4N+Whn0m9InJehFnS62ElQo45BHTiVaTsPCon5
         f5+PZS+juuWULd+b5lx/YqdElYnli3aXanCf51FNF7I5lVjuDiLuBEQmBoKRdPS9z5O8
         X6116n8pcv0G0u3Vq9u9WlP0Oyv7eQYRaid/7rya97tnlOJym7faS9aE4Jqn5yZ1Kvuy
         6EgVbanMq1ovZ/UgNWAHoqVeeKq65p7o9/k11AnEG6rFT4shAfPsTHXCjwaJ6BJnCkdt
         ZcdCzy1SnSL+gUIUnQTiapIh1BjEgUSXny5BddSVKeGpBGQrLpM5To7G5NBAYxRpp3Wj
         fWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771959417; x=1772564217;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wcBPkTiVH6T9XFAe2YZivXldQdsHXSAgNP1fgvgQp+8=;
        b=XR+GQAUDaCFomC9Hw6a0syLn9Z+XIUQKT6GVJMEtQSDLYl1NqMgl57pR9fXn92pU9k
         SHe0wQohxteHfrfAbFDtxxcsghtbkZ+oQQ8xoZsnmAXIDWstGS2pbgZ2DLmRnfhF/V+U
         cIkOwqBPxeK/DTnhh+0WkAWG+aof4lM7Lubwei9VZxeR3CFN0rbhjIYzstZ6VmXFnr9/
         oyleK3OLN7R8jJd6A5YKjlC86CHboRjkIDMEa6HZf4DUWo5mw8xk2i6D3ih3bDR3vaG/
         a8eXlhvKlLe2jkaRwngai+M1ItspWqYT+WKY/Sjujz9JZM+B9VNJtV0LZcmbwpDl6fF2
         26tw==
X-Gm-Message-State: AOJu0YyANlRQ6Nr6dRsO+Fky1+8iDJm4DMt84ksRoSgPLqUUhkZBzc03
	S5hV2xAT5nohoyQUf+YVhFx7t7UfYPi6wftY3zdgSJdAaZpb7ZIE924DUCzE2gBSOovlWhiuf85
	Qjk2fwu4m8Iq6cD6VGO/7mCDlWvTH6e6zE+UWeJ+DpubpHL9etDPi6sAWdSPgCnwz
X-Gm-Gg: ATEYQzy1Rmqu8XRYmraN8j7ZcVQVFkROL6oowHkQbypNdKdN7Fe/yFMRF+wMfzzfD+J
	CHWJqbi69W+aqP3pS5xvLFu+aYdZ2nluTWr8EnpPx5TBkJxwGehuwpYER4mkLboPfxmenbb7sAN
	fKLxOZTSYj2UM8WecQPBlximS5bqfXaQla1fbpaQBwP0e8mKRl8Ix9oX5fMYxV2eOUw94++Kvp6
	+V8X/p0pYteze3xfsJG4YG0QxuB3/0syoZbFHDs29JUoLAFRD/uIDA80HTtZIhOrOurPC1CB0Tj
	wnc8o3+WvjBEe3UVZIg0Gy1oKKfDTIRyjUJNdiT50gdJC6e4LL5bn5ChOk8Rfc5fd1Ymu8P9wUf
	4f5w9fdf0Brvjp2aI1z60eWCdzbQUcBJEyI60FQ/BUiz9Q5j5YXLcjAt+9DVukPal7f1+oNJbK6
	fnYQ0=
X-Received: by 2002:a05:7300:6916:b0:2ba:66fd:3705 with SMTP id 5a478bee46e88-2bd7b9d2025mr4406728eec.1.1771959416560;
        Tue, 24 Feb 2026 10:56:56 -0800 (PST)
X-Received: by 2002:a05:7300:6916:b0:2ba:66fd:3705 with SMTP id 5a478bee46e88-2bd7b9d2025mr4406712eec.1.1771959415991;
        Tue, 24 Feb 2026 10:56:55 -0800 (PST)
Received: from [10.71.112.164] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7da3eea6sm7243543eec.1.2026.02.24.10.56.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 10:56:55 -0800 (PST)
Message-ID: <1c790a52-3d84-46b8-aa14-1d005671e416@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 10:56:54 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=5BRFC_PATCH_0/1=5D_dt-bindings=3A_connector=3A_Add?=
 =?UTF-8?Q?_role=E2=80=91switch_provider_phandle?=
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZKvaWH7b c=1 sm=1 tr=0 ts=699df479 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=5KLPUuaC_9wA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8 a=DycSZj7UEik-oOTGROIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: hGgoD4k1fF2BHOIaG1hTQfVuPEvkdWIm
X-Proofpoint-ORIG-GUID: hGgoD4k1fF2BHOIaG1hTQfVuPEvkdWIm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDE2MSBTYWx0ZWRfX9muJRlnqSwKk
 70Huy7jTOug7u49t03bfJg1+oc1CMzfSlB/Lm0NqmycbgxwiUKA8xC/zWBL5eAv4N4BlOLNalop
 g3RCK9UMYHuiAbPMGEGUggGDNyVI2lPARAyGCFbdD+lHW5iqEmu0c/Jq8+fuhTtM0SaQ+oRAarN
 pZFJjxpaWgl7Bjkdk1b73fi6lhWlAzd44JwRtRf+uReRmC/ifRXFBPS3bQuyLUc39s9jr9v6qKT
 XP6q4FFR65N5Xgrv3IXI42a/oUWNEpHXHZFaB83fmgODDXWWs8m3JypPZ/K5IMY372pfDdWD16E
 UO/Cdf1jhAUcdHcWJQ/5hatronB2HgThzOZ1Plj5L1fQlr3prZYscIU+/tIadBuu5rZwrHQ3CN1
 Jl5na4qDmx11WGzbFAN9vekGYj5DLXRs63kYxTsYA+hGGynL5KN6ebMAJ0OQj3chDRBZ5kWiEVC
 7zsWRQNbuObX4/EZT5w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_02,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240161
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.3:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.2:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268035-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B222C18BA1A
X-Rspamd-Action: no action

+Heikki Krogerus <heikki.krogerus@linux.intel.com>

Adding Heikki since this relates to usb-role-switch provider modeling.

Thanks,
Elson

On 2/23/2026 11:10 AM, Elson Serrao wrote:
> Hi all,
> 
> This RFC proposes a generic Devicetree mechanism for a USB connector to
> reference the USB role‑switch provider when there is an intermediate,
> block between the connector and the controller in the OF graph.
> 
> Problem
> =======
> OF‑graph links are strictly point‑to‑point via remote-endpoint, so a
> consumer can only discover its immediate neighbor in the graph. When an
> intermediate node sits between the USB connector and the controller, the
> connector cannot identify the controller (the role‑switch provider) from
> the graph alone.
> 
> Example (illustrative only)
> ===========================
> On some Qualcomm SoCs, an Embedded USB Debug (EUD) block sits
> electrically between USB‑C connectors and DWC3 controllers. EUD models
> HS wiring only .
> 
> Below is a simplified diagram of the hardware paths:
> 
> 
> 				EUD Block
> 			   +------------------------------+  
> 			   |                              |
> [Conn-0]-->[USB2PHY-0]---->|-------- Path 0 --------------|-->[USBCtrl-0]
> 			   |                              |  
> [Conn-1]-->[USB2PHY-1]---->|-------- Path 1 --------------|-->[USBCtrl-1]
> 			   |                              |
> 			   |      +------------------+    |
> 			   |      |  EUD Debug Hub   |    |
> 			   |      +------------------+    |
> 			   +------------------------------+
> 
> And the corresponding OF‑graph mapping
> 
> # Node: EUD (intermediate; graph-only for HS) (extending [1] to dual port)
> EUD (eud@...)
> └── ports
>     ├─ port@0 (reg = <0>)
>     │   └─ endpoint  ── remote-endpoint ──>  USBCtrl-0
>     │
>     ├─ port@1 (reg = <1>)
>     │   └─ endpoint  ── remote-endpoint ──>  Conn-0
>     │
>     ├─ port@2 (reg = <2>)
>     │   └─ endpoint  ── remote-endpoint ──>  USBCtrl-1
>     │
>     └─ port@3 (reg = <3>)
>         └─ endpoint  ── remote-endpoint ──>  Conn-1
> 
> 
> # Node: Connector 0
> Conn-0: usb-connector
> └── port
>     └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@1
> 
> # Node: USB Controller 0
> USBCtrl-0: usb@...  (e.g., DWC3-0)
> └── port
>     └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@0
> 
> # Node: Connector 1
> Conn-1: usb-connector
> └── port
>     └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@3
> 
> # Node: USB Controller 1
> USBCtrl-1: usb@...  (e.g., DWC3)
> └── port
>     └─ port@0: endpoint  --> remote-endpoint -->  EUD:port@2
> 
> 
> From the OF‑graph structure alone, Conn‑0 cannot determine that
> USBCtrl‑0 (and not USBCtrl‑1) is the correct role‑switch provider.
> 
> Proposal
> ========
> Add an optional consumer→provider phandle on the connector:
> 
>     usb-role-switch = <&controller>;
> 
> The provider remains the controller node, which already declares the
> boolean 'usb-role-switch;' and registers the role‑switch device.
> 
> Request
> =======
> Please confirm whether adding an optional connector-side provider
> phandle is an acceptable general pattern for these topologies. If there
> is a more appropriate DT modeling approach for this scenario, I would
> appreciate your guidance.
> 
> Thanks for your time and review.
> 
> Best regards,
> Elson Serrao
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml?h=v6.19
> 
> Elson Serrao (1):
>   dt-bindings: connector: Add role‑switch provider phandle
> 
>  .../devicetree/bindings/connector/usb-connector.yaml      | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

