Return-Path: <devicetree+bounces-266087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLdcCBJVlGl3CgIAu9opvQ
	(envelope-from <devicetree+bounces-266087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:46:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A614B8B8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8B5030131F5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B805533507E;
	Tue, 17 Feb 2026 11:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pb/s5frp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V6+bJaU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8227B2F49F7
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328777; cv=none; b=uA/O4sjnUiAVHl6EZdMvC6ne/UrID+vx3wdCTxKbI1GTnoSBpKSwiulSC97UjHJgy3eTvidH7moUH+vWduzgQM1Y89rmo5rfc9uKYiWYgvL6Sv2XXktTdaUWpunV/4NBIjuTjp0teW61HknXHdnpT+jZe+YAWYiWzOjw+VjDrG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328777; c=relaxed/simple;
	bh=sGTzj61xYJ1EFVupvf0NZw/NajElGdUjp1JLXk9f4yw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PO6UlunRWWd52aVo5Yp0Ixpjg6hUyPoAbOZkZ2BPakeZeQ+pALdahmHMzTbSQtD4+kbAsoGwFhyN8ISPvAxe7TtH8kTdX3H4UfaPovH1++/iRcRawKoLpFNecxaFYZ/jlvY0kC0HsPg6AMApo5EdaVXFDj/hQcFpgms1TFdCYm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pb/s5frp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V6+bJaU5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9MHc0985268
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:46:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sCk9OpWnJfO2diGe6paKGh1+BeBt+jweQ3ZEQMMxtpg=; b=Pb/s5frp4NM4keU9
	ilYpufn0l4Bz1pYY6VYR/LurTD0FIHXtS+ZpKXuCWs8ze0v/b0NDj9eOUzwmZ0Bg
	8w9vdufyguK9g0HIW4dCv9WDHB4Wl3vlV7Rpmi1Z8/VONBIxrEk3Yzn/1yD+VoNy
	Dh2EXyYSGzsJJsUOVWSzv6/FNiO6GIzHqlktB2XxiENJ48fq8vrTqPxoDWpr9odb
	nV037rxU/V5Rc0QXwO7OqjKM3fXcsROF3PvoYSpH2MJibP4ar5yehblogfvxzgaA
	iFnwI3mhe1o7rAxVF1eFPu+Judte59GOvz2jAo4fiN6eUijJKtMZ2zpViVNvLfq7
	RvQP2g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap22fx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:46:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4025302aso330002785a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771328775; x=1771933575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sCk9OpWnJfO2diGe6paKGh1+BeBt+jweQ3ZEQMMxtpg=;
        b=V6+bJaU5Map+jgYKfBhf8b352YER/QYTUyyWD2aHhwiBKpaucDZqWkjVxfF6l6qDSz
         dkSOly9zmiD+rPCnf7NOUkEBStWosWw3bZk1BNw5j3pXyDbj3dX1GUwlghCRfMy7b5sN
         2FK7WsjNTGaMQUvYmGo8xkCOTiQlXXsRA2uuXSk1Q9DjYngeSXz1+pYV3cIlGa5m2KP3
         Ak1Jt21Uh9O6YGpptewlZ37E86/5iMHArBGS3KFXWquNM+rzt4lkc1Vzml1LQb5I3pve
         MafNq2NFks/xb/M5cVtXmgU77EWuhiA4JU903nuddtGlGW5ixuUE5vjZQSnSrQ1NbZkP
         Q9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771328775; x=1771933575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sCk9OpWnJfO2diGe6paKGh1+BeBt+jweQ3ZEQMMxtpg=;
        b=XDlAO+4dNfYVnyFqsLgBw9i+aBbqNI74rGmTrWq6+TcGXwZz0fiSOmv+6O4C94xoDZ
         PtvMuIY8TD63xyOF4m+OL601hlp2bxftKhrPqWDReZvIkD63ro8wI08lH8MJpRf7wIRs
         ogVDZCiSJRDvlzty+zSIltNYYuornfbGdydgn6+ktCQHW1H0Ew1gC/n5ukrC4xRrY54J
         oIvtTeKmQD7fIgVVSwODtqzUvQ0p97TruYqGtBoLKNQcuGEFMNqivN6Xmoep4A4ptxmr
         FyKveW+ACMT+VQzKIbK/lwph5tj7LCzUtjYMITS9V/hfHH+H8+Vas0w4JOBgH//A4FFv
         prdw==
X-Forwarded-Encrypted: i=1; AJvYcCXmTkjAq1FAmOgv8aJsp3Mj3Og+q3sSyjJ+5WDgcyIbIi9zmahxVSw2CeiHj+LhJq03cBjaIn1UJS8S@vger.kernel.org
X-Gm-Message-State: AOJu0YymGCll2VFJbyfSL8dczsC4TzQQ2t1LnIiHtUDMwhj30JqXaEot
	QQ6kUUs8Xv2m4Wqn1fsoa2EaH5xv597VVg2wU57ogaN6qvsLLI5/N4KZyUNG2myAmcT6QilooAY
	03/c2W49mnyiPzOYa3q6NNmh4dt+X7RWdXlEtuP7OVnwgW6mEK1In7burdWbStDtK
X-Gm-Gg: AZuq6aI1sYRE7KwzP2Ihwu2/ThX/VtWqNHx5eP+N08/DV73i4Gfi7fs2JhYrkF/ZJUk
	nvsKVo1XUP926pItrrKg1pI/j8GIfX2RkXT2T4+jqtV3PS7TVowXYZI+zQNQp2aw5fDU997Co/9
	F83cBibagzaHvE8sOmgD9mhSVMcZIRSgtJi8qL6xFQYmBPd4obLDINTKCiwcPjJn1mdRM00ulVP
	Pd5PYQZZW2IRDxF2QARLM7lhq4i2fq9Kg+dFMgQtaKeVbT7I2+5XDPvWVmlJBX5H/NqCB8CQkMX
	XkOQBMuPuDmwtkrtQhb9YbTxpDfU3epTw6Yq/hL/jqlYUNeRfyDEeFwRIV3BDdtCWjL46yHPzQ8
	v1SA1vsKJFpmbrQfp4h8zD2oi1N44tE2+G8xYyrKJOcGJl3fV73M8eLH4hCLcto1GCtOecqcdz1
	git6A=
X-Received: by 2002:a05:620a:454f:b0:8ca:2e7:56c5 with SMTP id af79cd13be357-8cb40916695mr1244231585a.11.1771328774818;
        Tue, 17 Feb 2026 03:46:14 -0800 (PST)
X-Received: by 2002:a05:620a:454f:b0:8ca:2e7:56c5 with SMTP id af79cd13be357-8cb40916695mr1244228885a.11.1771328774294;
        Tue, 17 Feb 2026 03:46:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7385f7asm351610766b.21.2026.02.17.03.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:46:13 -0800 (PST)
Message-ID: <3b9821b4-68df-4f2b-a384-912a2dc98bf7@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 12:46:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/13] i2c: qcom-geni: Store of_device_id data in
 driver private struct
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-13-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206174112.4149893-13-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OCBTYWx0ZWRfXz3I4Mh+ID2Ft
 BSGKl7O2TQlwnwLdFv4rgP52UTrZGb8H2qDt9aYOnwpioQzxm1GUEJvH4GX6LLz1PiZXfSthW9M
 Dw4Ir3o01z6NLoPS5cPbXAIx6B9J5afSTks+F5VWlU28JLU7cqLX+AUARZjiA3d1vK6mW+UmdbR
 vzq6OXN75jdlZghY2maMAar6KBPuAsBEtccd1BvXzdMzxOS2emMOhgyFTObnBj+0zvZR32yD5fi
 MzDyPT+diHij5uQRFb5fm+IPlhT59INh1DVXuV3gcNYuJgp1u7rdP38HlW++DWv6A1peQsM4j/K
 tGcVytQuuhaUZO1q58m6PJxzF6YOyl7Itp9nSZmGmGuha2M4LkMjnJcHKGlQez+hLWjmlN6Bc6u
 28MmhNMCG7QY9yxnonYr5FeaD+g8RRgzUhrcA0eiKiERazTiW64t1Sjb3M9eQfWgsQyphZAncxn
 LtgqfirydvK5GDIpZNA==
X-Proofpoint-ORIG-GUID: MZVVWX5i-RyXQlp09UvZkYAJzi_9HnXZ
X-Proofpoint-GUID: MZVVWX5i-RyXQlp09UvZkYAJzi_9HnXZ
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=69945507 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=pV_FUetQsCUf9QfKx1wA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266087-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7A2A614B8B8
X-Rspamd-Action: no action

On 2/6/26 6:41 PM, Praveen Talari wrote:
> To avoid repeatedly fetching and checking platform data across various
> functions, store the struct of_device_id data directly in the i2c
> private structure. This change enhances code maintainability and reduces
> redundancy.
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> -	desc = device_get_match_data(&pdev->dev);
> +	gi2c->dev_data = device_get_match_data(&pdev->dev);
> +	if (!gi2c->dev_data)
> +		return -EINVAL;

This is an improvement, but you still need this:

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index ae609bdd2ec4..08e5a1917933 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -933,8 +933,8 @@ static const struct i2c_algorithm geni_i2c_algo = {
 
 #ifdef CONFIG_ACPI
 static const struct acpi_device_id geni_i2c_acpi_match[] = {
-       { "QCOM0220"},
-       { "QCOM0411" },
+       { "QCOM0220", (kernel_ulong_t)&geni_i2c},
+       { "QCOM0411", (kernel_ulong_t)&geni_i2c },
        { }
 };
 MODULE_DEVICE_TABLE(acpi, geni_i2c_acpi_match);

for this check to not fail

Konrad

