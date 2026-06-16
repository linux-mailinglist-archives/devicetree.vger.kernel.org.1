Return-Path: <devicetree+bounces-312528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zx8AKj9BMWoffgUAu9opvQ
	(envelope-from <devicetree+bounces-312528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:27:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 255A868F4D9
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:27:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=T0QS3h2t;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=QSLSimlG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312528-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312528-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D9CF30CAE3F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637AC35DA4C;
	Tue, 16 Jun 2026 12:27:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5D35C1B7
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 12:27:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781612834; cv=none; b=NANyb6c2Hc5JhEUOud182IPjQowPNWqCUcog8RVNuqAAg/zi46ejojx2sAU77WcMHmvplwboxiKeyBRpRb2+60XCY+gehJ1AR78VqAXk+EUGx7MiTzNwXSLt84ExqoUExW23ZR+z0YTWlrQRNJePw4bSTwYNIZPuXZR4oFg4QvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781612834; c=relaxed/simple;
	bh=B8BCQM18rA1tnKhxMhvVZSxDnp4DEs0alQWE0FbxWYA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o7Yn9XdTAydxLmHCbrXCmmjPBPiaUzDJkfmoL/fWGcuhV1/ritCGvs78zIlFV2arL9AtgLbFHitw4tM4iydrJKWmaGzjLudHoW7MUKgr6whtt36UE+EIHyvAl9CL+hTDAO5407Bc5VWe26sr+3Yuc8IoVPXU5joSbud8XkizcVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T0QS3h2t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QSLSimlG; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GA9jZF2799422
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 12:27:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bmbbYyR7uZKr7eHxk6XdJnTVLl1y284/iTbKusv3yoA=; b=T0QS3h2tjfDWK8sC
	MIHh0/v5JVIIQnsaua03VvjzRtjxHvDR/sxWcdzsPVe8PClbTQLYRAUHLV5WETGK
	Ui10kvEL0zJLKE/bFUp4mLeLrbopOYStogPdApS68V2efWr2dfnpsadoV0cLHDhs
	873QTdqeTzHSsWX3DQtalWuXsdOxurKqHUY1R6UEOn+vsYSeRapf/5nDEZDJ4ixA
	oky6CaV9JbU741BOZoFOMf/HG48K55Z5lTn27f7KJMjgSwAIbv1Ll3JSa5pR29mL
	UT4eEXg/pBOOXm67wKbIW5bXAHY9zhC5BRgjKPZUhYI+z8FHZSh6cqVhVT+BlFny
	m8eI1w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu0a7srpf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 12:27:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5199ca24b07so900241cf.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 05:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781612831; x=1782217631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bmbbYyR7uZKr7eHxk6XdJnTVLl1y284/iTbKusv3yoA=;
        b=QSLSimlG42N51UY/RQFr5JFdwU+GA+kaHqLaPJvqGKRVak6W4MUfhrtKekFXkUUIfX
         VWlccBsN/an91aLtBE5ADA9Y8xqCOyMHDnrL31B9v9NA+XBgmBkhrlC5TFAjqR1/eqYY
         +iQ0YHk3OGdv46hno/nOm+RY3IqecYmRN8XyNcCVrSpgPmsuyGR7kHgGHpcuM6a3Gvb1
         TgCOnsjelwWSVSd4tDoDCJZgsE81okkwNAL76Z5Z/xE3C1SY5EhP5ExjUrCDDgnodDYx
         +LenXMEWmYp2OkSRWOEjj97gyW1Sz8EpPzV9Mv0SzLuQEfBL9+2dBcul3MRf9RQXlXx+
         BH1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781612831; x=1782217631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bmbbYyR7uZKr7eHxk6XdJnTVLl1y284/iTbKusv3yoA=;
        b=MgejpThTT1CH4Eizr1nSps0aETXLX3074YaQ1sMazoIUgL6TcxxJ4QMNG9eFe9EFS2
         5TbGBsOSVrwtCUVuLLZw1JkYXS0X18FTdifL0i4m9c96wHcJDdT8nAIoMno2NgMR3Kko
         8dzSsIFDN4qeQaXtMjvftnokLQgnUTQ+p0Tj/A3Z7paQsZP/2oC4OW2omX7woX1olflX
         vtefc52GClSj3TT5apHN4Ji9SdpJ8o0TQ9+5O9wgszeU6EVCOLgbO6kCPmlD9QKgagcA
         aL8mtiQZqOrOnkg24m/whlWGrs8s8asxIoXJJ03gyruhUCPhrzANY/YX5C3AdEAEc1FL
         9hsw==
X-Forwarded-Encrypted: i=1; AFNElJ+UHQk4XHvm5YjhXa6hS5eziEhHmJDwFzU2E51xvD2qrDDxVqo6vzRclXF+0V1HLAMjPIhHIBapRBJA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0+nZ93tIiG6h15XyyFVtPsYgRaKWZVf/9vWrV1Gri8nS+JTf3
	TZaM6lhmHnOrT+p38zm7Dt721c+yw4vjQbZxa7KEJs/Sr/N4Yna/nwvkQAoi1agHbJ65hJ+rWbr
	v3iYGTyeTcKfN9Sr0iV9eXdXgqlIMOuN1P/5lLtmwfp7U+0kkG9fM2rmCJWi84YJY
X-Gm-Gg: Acq92OGmwZT9X9X+FYTTseADUm94OdDUck1aCVvNqvSeRA7F1A03AXGnAV84dEqghaz
	hquBp7SAeVpJpuRGdhS4rXnqDHfWk3KeOf0ivRE4g2B/Sl7tC9DuFa3erwi9k8g38SIAhCOTt4u
	a0LxasX4nVuHQTMK//V/jzdcYajl2+9ifOh1ck5tCBiICF93rnunE2hHlqdVDjo0nDRvLmONr4l
	GQSbcJ+mkyknXpmniA0WcHr6l7W56zMRU9Lg2cbAs+AGGhxyDmfgAQpurgC722hxv7oD2te2DQn
	SfGpxeMFAYe2gxu1LeaqgVtNp6adxn61ePkkDv9eSLbwNi4szs1J5lP+vT542/PzaVP76hJ/Was
	3QzhB6z77JGN5BdJyoWk2tq3i1AD6Cos35s5ldK3f6SIYxw==
X-Received: by 2002:a05:622a:148d:b0:516:cae0:c6e9 with SMTP id d75a77b69052e-517fdc7df1cmr172113321cf.0.1781612831506;
        Tue, 16 Jun 2026 05:27:11 -0700 (PDT)
X-Received: by 2002:a05:622a:148d:b0:516:cae0:c6e9 with SMTP id d75a77b69052e-517fdc7df1cmr172112991cf.0.1781612831079;
        Tue, 16 Jun 2026 05:27:11 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb4420823sm643729366b.4.2026.06.16.05.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 05:27:10 -0700 (PDT)
Message-ID: <bc1d3c3b-b6ab-4070-a560-44adab4d877a@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 14:27:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: Document CDSP Power
 Management
To: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260520-cdsp-power-v1-0-85eb9501a1cd@oss.qualcomm.com>
 <20260520-cdsp-power-v1-1-85eb9501a1cd@oss.qualcomm.com>
 <da2443f4-b80e-4ba5-8f83-4a4e893dd51b@oss.qualcomm.com>
 <8d9f78d2-d414-4ffb-bdf2-e2e7bda73aaf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8d9f78d2-d414-4ffb-bdf2-e2e7bda73aaf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDEyNiBTYWx0ZWRfX/k8GR9hBepjp
 Ifzjwm/juLlpVApmMJfyZug/ivbM0ZW7+3rCIjZlm350I9ihft1ig+wPSYe/RDVY4s3ReDacxmg
 xrs1oGinznqHVow7ircAF7HfZq5ROaBCFC/xzbELcLrbPGkvRjejQua05joC/UwpKZBKUgNiqlh
 5QqZp0BPKie9jgvgX/zFG97OWpDk6szJqoLlnOVIYuvwV9RxoddDCKDgQoN0q+TVAk5TWk1yZPm
 4pbgLG8VZvm+CCb63R4+TIb8uxQOkKYdQ4kAhBAcvpMRTKdwpZo+iw5imx1etVyOIjBbQUD+zx1
 jIYx5s2ioRat7mtf8zZBm0yKIETSENhZf00HrhnI6scVv5UnMFouytTcdz7TOQPiFldhS4UORxa
 jU9YQS+Tk808hzVU+B335WA0rXmmkzEqCrpHBDm6Erk6XuZmjJ8kxob1aOQC5fuV844qaN4MGEy
 rEE87+9G1yArjpmewHg==
X-Authority-Analysis: v=2.4 cv=JKALdcKb c=1 sm=1 tr=0 ts=6a314120 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=sLTQJQ2odkIT5fSfO8wA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: D1TeCk3P3jB5xv1o26-AMn6D9NcQYIiY
X-Proofpoint-GUID: D1TeCk3P3jB5xv1o26-AMn6D9NcQYIiY
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDEyNiBTYWx0ZWRfX/DtOpjBK0CAX
 sJVUdCYA7x/5rsuWmm6/g763bgZxYvRj/Ozwi4+YE9PCXDRvKhLtYaswRLNoXEDIBhZEHDFAfjU
 WLiCCATjyAYBOpf5Ln21JvZziEGZPOk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_03,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160126
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:vignesh.viswanathan@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 255A868F4D9

On 5/26/26 9:38 AM, Vignesh Viswanathan wrote:
> 
> 
> On 5/20/2026 3:29 PM, Konrad Dybcio wrote:
>> On 5/19/26 9:05 PM, Vignesh Viswanathan wrote:
>>> Add documentation for the CDSP Power Management driver, which handles
>>> Dynamic Clock and Voltage Scaling (DCVS) requests via SMEM, manages Low
>>> Power Mode (LPM) transitions via MPM handshake, and provides virtual
>>> regulators for the remoteproc driver to control CDSP power rails.
>>>
>>> Signed-off-by: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>>> ---

[...]

>> MPM is a top-level peripheral, but this is a slice dedicated to the
>> CDSP so maybe it'd pass, but..
>>
>>> +                  <0x0 0x26018018 0x0 0x4>;
>>
>> This is a single random register within the CDSP's register space, so
>> we should definitely be able to describe this better..
> 
> Will document this more clearly in the next version.

By "describe" I meant "represent in DTS" - it may be that we need to expose
a syscon or something similar

Konrad

