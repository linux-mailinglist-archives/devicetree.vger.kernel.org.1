Return-Path: <devicetree+bounces-262686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ED3SDUJSg2mJlQMAu9opvQ
	(envelope-from <devicetree+bounces-262686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:05:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E88E6D78
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BEC73302780F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0F82836A0;
	Wed,  4 Feb 2026 14:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZiLZOMYR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DEjpiicE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D920B23184F
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 14:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770213704; cv=none; b=uW7t77lMV7NDcDTdjFn+wGgmswFgLtNKlXsu0uEg682pAb3UdEdSlXrrhawq1oWSas1iVEiL+cY9ixiCQQDARBqmEWaGGw6Q9Q2H7xsWxtrz7YOArwcsVw1BqgYbN+S4KnYsXCHnrRUtEyuPq53tIwUV+F4hbGvSulLddFOrvdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770213704; c=relaxed/simple;
	bh=emMy13JrIEWGGb4Yj1Obm5OPqROR8LK+7EP9jth9dqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VTiCvTNVosXVysAnxPIy3sMaRtVJKtUpuLqb+aKo3gTWH9eJ3VS3eZqg52XqY06/152jsMEo65e9lPwtUtweOGq14p5qTI5S2m4zVvOo/V6p45nDZrYbJ0iJfxN8BbbVSuVpqj0bk0m0B26ZflxWzfA1Hu5g/INpDxSsRfW+/0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZiLZOMYR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DEjpiicE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIUZq1401862
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 14:01:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iS4JnPBI/eXVdO62TuwXvtzIoHIazcuTqGQx24R1EVo=; b=ZiLZOMYRu9h4C6Tb
	h1jNhopo271rF10/GFM3clK1wupFoWU83A/Fy744Gh7fbDSjMW/KGAMPsmz53Bmy
	Nz9+sATEiw3LgAgIclcQqFXucWRw+z1936yAcwxccfnQcMSSMbCXvrHCAkOEgdVC
	80qbUBPLoYGLu/chJlPYbVQ3FkNFCXRJ8RZBvqyRMxndRxNt6GDmRyQK6a7WK0UI
	rmKFPMzWuS+PsXwU8hbrG4QBma6FqJGDbhUS5u693dpAyjqS13N8C3OXOqmbAdZW
	+4FfgpRKiQQeXbftpqosHUbIV+d+d6Uo2p5exwB8cyvJ+dfk5A6j3dMfgfd1wQyi
	3wzp8A==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c43dh0r6c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 14:01:42 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-948b6dbb730so1282229241.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 06:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770213702; x=1770818502; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iS4JnPBI/eXVdO62TuwXvtzIoHIazcuTqGQx24R1EVo=;
        b=DEjpiicEWGT//yAP8SRvNI5w1sCp9DydCHosB0Cg3/ovY/eSVbpth+iSoucyFX52q1
         1bdpvq0GNlbJ3hwfsl3ea3ZxKQ2dCriZQG/18iVQyGuXpkAF4TcZh6iEWnoPCo/8RfpB
         gjgdnIr74Mhh3xMLNHpNjCzXSGyV+6NbbdwadTiMjUdGhuqYPydfI6Ro9QBWzd/SZ1MT
         7i3K7ZC1x0wf/92BsdTCpuDYGHCAxA1zDWaEB9/6nCW9ZR2itvbYxEfVqPe2Z9SewwTL
         G8osy1/M3fTpUfwxhAd6wXPvIgBnTOWXdYKMhL2Rh+ydqRvMtGm35o9u8w/9ASJ7Sp3E
         +sig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770213702; x=1770818502;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iS4JnPBI/eXVdO62TuwXvtzIoHIazcuTqGQx24R1EVo=;
        b=XjKoIhtSZVerdwmFtB1OwLojCgcaiA2cN3VvaI0YTERRxKEXQh66w4ikL91Ud/BY9m
         1ZBNOVlfS87NrJ7mNjl6ZNhPY801JjqvNeQtx7YyNnoKW3K1bTKmJKqiB1ViMVQmCfOC
         g+WFWMnDpSxZ9yW4qLgKyFU5An+sqPmsFB4TLTOJhZCs5b2pOMRAExGutG4UlAq6sFTa
         AOzswMXfp6ktlvEbDJ1Cp1yZ08CrPB87P6Noj0EYbFRRwy+i3cfwzoW5JsnHjs0tpFcP
         vDymEP3J1S8lDJzxN0rp/HGI5r+FOBK2PbfwEFIbUphwFRog1BeHMRWmtbb+WavU1xBo
         gT4Q==
X-Forwarded-Encrypted: i=1; AJvYcCU0IkLjKXovrbQ3Az1dk7QkaYtTwg0OHoeJTdAOROUj6T65r3aQhybQNhFAdP0de8w3Ml8brLtAAlPG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+96LVlVDRxKhq02zFPyNGWomK6pLOgykiGUXm0I6uWqxH4fzY
	XlcrrDXUReWd2nXy0jRK0811bQT2Kjd9y6QavwfiB5g6Ag6xsWSsmwrYEHrm8ctVqcYvOYu6Wle
	sJlQZchu6dLpr3gYYHclz59DTMR8EaU4eqj+dQ7bWhXUEMNNxQy5aiIxpOpLKXPhI
X-Gm-Gg: AZuq6aL/XQ0pK/APPshUmt0DSzGzEsFOqAHWpz5lbsPjzwiYIFCGbt5MDiD46+YFosm
	zbk6W9fwyqGQOgAlZyVXpOyraVOnNHSVB7yKQW426OK0A5uNLSY0Kh3KM4iHEdOw6BKwMc8XYIc
	u04ME/1Hraphfl5INwkpidZPZRh/PojCgwB4efaq3AI9KwYf7PEB10mFO7H0tOH7SPzoRLpChUn
	pVHs+8VikLlHuYgjCgVLbhS3mgHAtyoilyOuHbpR4K4NAGUJ3KGA8AAVj9C8mA6TSwMvXzoJmh0
	cCxYttb/e3HCDrsKRWDBAK+99VW/jjYumOk3AU0LtBCRDepsDY4HNaHQidhaKiHwDE11LbnTEBw
	64YjpbpTWL5a9gBml+tCX6xo+cMWBib8lkUgmfUaFPWlv11ysvWGm7vT24kPITB01R3U=
X-Received: by 2002:a05:6122:1306:b0:55b:1668:8a76 with SMTP id 71dfb90a1353d-566e808afb3mr556359e0c.2.1770213698833;
        Wed, 04 Feb 2026 06:01:38 -0800 (PST)
X-Received: by 2002:a05:6122:1306:b0:55b:1668:8a76 with SMTP id 71dfb90a1353d-566e808afb3mr555907e0c.2.1770213694155;
        Wed, 04 Feb 2026 06:01:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fcd8f17sm128981866b.12.2026.02.04.06.01.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 06:01:33 -0800 (PST)
Message-ID: <a16563a6-b338-42b0-8e04-b1ec56145175@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 15:01:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: soc: qcom: eud: Restructure to model
 multi-path hardware
To: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
 <20260126233830.2193816-2-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126233830.2193816-2-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=bMgb4f+Z c=1 sm=1 tr=0 ts=69835146 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1VuqB2ABKDwlP82YmI0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: W4NZetMHqTYD_5VOCTTGE_QsX5KJkWWM
X-Proofpoint-GUID: W4NZetMHqTYD_5VOCTTGE_QsX5KJkWWM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEwNiBTYWx0ZWRfX5Qyt847lQ9e3
 sdT/nwGmARITAaAGABFD5OzXYBzeHSnbBbyxdKRQiwfsLrAKDuqf0ejORFu1+u+f+VCczdbuR52
 fRCkEotE4XHO6/YRIgPgOt+3C+uDIkB3KRgPv909q/g1jzCZyg5ViGwL3yLvlj2Jyn7Lyz0sv+X
 z5Q7quQW+sPfJqRAzEp3CjgCJrgOXHFjPe4uJ8wR9lebkE6q82ekMF703zRV//1zf5nkktPuIte
 PSGEfS7k3bRic4wA2chivIu9zn63PYV+JdnJXAZSNRIeTeHwmyH36RO+zlBTxYidBr27Pk7xAHC
 FPTXfFX3cTuCggIiqhkGohA8dtvanQ6Jcnmw6GKmpfzaOPQRp6/Eh1xQUM1LhpEne1XyNZr+bDv
 aRRee9KV528fml9MRjcRYjTLh5mmtmLwf011h45YFofi8hgNGC2kjs/8H0sjydJvUahomSZKo/A
 S74pDDTao9VAcx+Q08w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_04,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262686-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E0E88E6D78
X-Rspamd-Action: no action

On 1/27/26 12:38 AM, Elson Serrao wrote:
> The Qualcomm Embedded USB Debugger (EUD) can intercept one or two
> independent High-Speed UTMI paths, depending on the SoC. Each path is
> distinct with its own HS-PHY interface, connector/controller wiring, and
> UTMI routing behavior. The EUD hardware sits between the USB2 PHY and
> the USB controller on each path.
> 
> The existing binding models only a single UTMI path and does not provide
> a way to associate the required High-Speed USB PHY. EUD relies on the
> HS-PHY on the selected UTMI path for link signalling and correct operation
> of the hardware.
> 
> Historically, EUD has worked on platforms that use a single UTMI path
> because the USB controller maintains ownership of the PHY during
> enumeration and normal operation. This implicit relationship allowed
> EUD to function even though the dependency on the PHY was not described
> in the binding. However, this behavior is not guaranteed by hardware.
> The current binding description is not sufficient for SoCs that expose
> two independent UTMI paths, where the PHY association and port wiring
> must be explicitly described.
> 
> Introduce per-path eud-path child nodes so each UTMI path can describe
> its HS-PHY, port connections, and the role‑switching capability of its
> associated USB port.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---

[...]

> +patternProperties:
> +  "^eud-path@[0-1]$":

At least a since instance of this should be 'required'

Konrad

