Return-Path: <devicetree+bounces-265698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N1uAer5kmlx0gEAu9opvQ
	(envelope-from <devicetree+bounces-265698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:05:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB4D142A4D
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7045D300830B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F8D3016E9;
	Mon, 16 Feb 2026 11:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VAg9yyJp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FGijIqag"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7892F1FC7
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771239901; cv=none; b=SVtXSe5BirrXa1fom4QTSYBHus+3GD/SWJeEqcifSjSc/MXgaTmRTQl/UK2k1xMzu5G8oMfjbkaPx1nrH5LtC8yvDyoJVMYUMy53yXrgpufU2eg5rgOjg6YTkS4VpdQFUNawpw/RbXhhTJiduaxQOxDPE9V5+2QMlv26EfMuevU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771239901; c=relaxed/simple;
	bh=uFLzZ/OpOze42lfs9jzKcryGN6NcWAmvBOPQSyaCvIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=No7R1CckU7+L4ehI9kGS80r2Ro3JlIunei8Xa0ZlWqZs2xNINptUcez0kFoTqLuaXNW6LCu7Zw6LRWFCwZdtFVtrfE0paBuNAnbTFtm4+1IphGvl3SpFoCM4al6UQjqDM5B5eraWaVoXFoISAXr8Sf68xoo2m0clKBGak0wVrPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VAg9yyJp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FGijIqag; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8geKD2803486
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:04:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oLeGWuVUYOMsAivyCeX9pczLMdB6yClRRgLlfmsVrLs=; b=VAg9yyJpz0GtCpj4
	56SENzt5ZkKUkybm4QBzTYyX2C0zom5mYqe3Z2N1mccX87UznNB3RRg2OW+48H68
	pK+8qiVWNWp6QakFfrHbyI3xzHlRT51kgj2TRCiCv956eWnooEMQkU4cWZCYcJ1p
	IiByB5C8QIhuftgP1INSPW6x7oa1bLGXRN/QE6T7pzsQu4cWYVrXmvXXwKb0eXTJ
	zzoXCR9DzKLrmk9JyyGfGwejojGR0Ha3J/49uKBU+at1gaz7FDNGhB6CxxzOyo/r
	2tmWuHkDgpNl3NXC23D2GfDgVZZBn9VtZT+wyJri6DxCF2OfERafuOyPV5oK4EP+
	qn5ahg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbyxugbud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:04:58 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8946c23cf90so23035986d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 03:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771239898; x=1771844698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oLeGWuVUYOMsAivyCeX9pczLMdB6yClRRgLlfmsVrLs=;
        b=FGijIqagrca9mpjMWhXWqWXM4e9QDrEoyDX8MmBIiFXb0Z+tNKOhdhGW7PM///0Nkf
         AzhMI/7Tf2YsslWTcxPQM7mdwzFxcHUgf6+9vNRPSee0cAsAzEgNhZYAKY9DL9A6ow3S
         CiW0CrLP8kIWsLgaKHeIJa+JxGjEL0M9prXqvGwtoav4e7s38eTLmJzO46gRqnhGS/bU
         +KDgNXbNAUz7vy8i6Pzk+R47nW43c1eDX6H+UKb39b+0UGsI38VpnoB3+8Kn1FUOREB2
         7f4Z6rQir3+7YlW6uA/7pmj5YP5gS/6GnfQwQYPtE8PP77dWXPBSqoc2jY++wYOr9GTC
         pllw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771239898; x=1771844698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oLeGWuVUYOMsAivyCeX9pczLMdB6yClRRgLlfmsVrLs=;
        b=oH4npQ1QDlgIkrRkbzof0sT5z/zEL0WpJ6hL65Sp8BHqn1YyrppLnWee3gUiyFOd/a
         NXY/ZUApxReJh35xkInd+zDhppz0S8eyGll3ZuBWB1MUZWR48aoZTk6GBM2WraWIKX4w
         pTOK6SUuqa1cCb+lXKvZqoJ9/zBeAbYFyAwsg9rAeXoHJEEV1o/mn5n4sxhV1f4hF1nS
         Bjytf0mxvxB+Pd6F1KSldAVR+JJDSWm722xnirJctirxbQ6g1cjGGIZFd6hfubKQs9Bq
         Qjy9oo/Rqyu9f01WZnzHjk7z+pYyBkGDgwTgK3dAzgufPb+MP+9sUWyt4JClPwvofBlp
         sFrg==
X-Forwarded-Encrypted: i=1; AJvYcCVMrd7Xg091rz4evd19qpiieZROOgEhQDq4/JYHqKSS4FRBCKEZ7iVcdq2lo6dN0MGQGQKHXH0g1w2f@vger.kernel.org
X-Gm-Message-State: AOJu0YyMo7ys4slUvxKlRfezWWDu7PyoSl5fg+Sxpj13383XodQwB6RK
	povJXLbHeoyRJnT4uGuJiqAJcdHXLyLHYl+Ky38NG3qMhwAU6U6GJQznRZ8PPJefzcaRoHSgNxD
	QfzQ0ZSBDofsSB0Bf/sAnPX2W1twHjeYq6Jx1dlbi2Kme+p5rcRUkczCMkf9Z5Lji
X-Gm-Gg: AZuq6aIIcMAmYfZ/haGcQjtxW8gJZhxWpuAkrlG8zfZV50m+gqN5gfcVlZaJhw6VHGh
	DypjcTMJg/4eECDvv98uge0dMzbJ1DVEvdPKA3pWE1qci1zXwjxY/7zhtR24lbMI1HSc9WmGyhb
	TMXNST+7usxB8FSep30ost6ATvIMXXEHFq5L+XyN6QfeYx7UlfZQunxqtW3HV1rWsqz6HN0tkBl
	z2NATDv2wpDSbojbzqgMg0+qcPcc4AfBg6Hy3pbNBwJYpP7GqZ9OjHENmKaPK1OTjtsZ4YFIwpe
	37TueOPabc0Mj3P57cmbC61UbrwPlEI5TUioz7HsJrGV0eOml4JsROXssAnc+jKMcR62GDKgvE9
	Cj/UjVn1Yvs26wOTosVVl882kX78tWv1jrX2a+/qyjxGeqCrptUAQ1c2ArWh/MsYMyli3xPF6nr
	7L/5E=
X-Received: by 2002:a05:6214:55c6:b0:894:a36b:f7df with SMTP id 6a1803df08f44-8973480967fmr98228046d6.8.1771239897938;
        Mon, 16 Feb 2026 03:04:57 -0800 (PST)
X-Received: by 2002:a05:6214:55c6:b0:894:a36b:f7df with SMTP id 6a1803df08f44-8973480967fmr98227796d6.8.1771239897540;
        Mon, 16 Feb 2026 03:04:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7629b56sm255173966b.37.2026.02.16.03.04.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 03:04:57 -0800 (PST)
Message-ID: <c83ce76a-1c83-40eb-9c67-d26b7e6f68f3@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 12:04:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add CAMSS support for SM6350
To: Luca Weiss <luca.weiss@fairphone.com>, Bryan O'Donoghue <bod@kernel.org>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Zb9I6hQKuUEJi-oXHcMRf8qi-QQX5dzM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5MyBTYWx0ZWRfXyNB1GqdDCMd8
 a6B/4aJvMO9X5z55ZDPmcPr0sUxt3HsV8++KgWrk0SosPtFMniBFInPDl4y5d3iTZjUjajcO1j3
 2asIN/GQiuDIbxmsQx/ZleD5QKb9DdZYjIpO6xh+niuDU1ze60RpYpMOJ5N0da7zw6n1eVDENPs
 bshDZLfFB1vBux2YXmsaxNnpJBmk+htK8jF22aqUnmsJWK400pkJkoIVB99HEDRf42FdqHKZ9bp
 0+YZpl7KPvAlrT4ikXTHg2Vq4uBdBDx0SWP4MWvFyQvOnlDkfoJdxdYyPU5wPKiBSGj2WaYDqZl
 8Czvp86OmyhqDoZlhtDva+40KIR+ae4CVzUhsvfhYt4xvpQHK7WissIfsgUT1xqHkXFXVx5lGSy
 WtiR2o2o2APBfSk01asMStQtm/BN3gMELphMIcR0mFUgEjPbA3EIKP6RIl081EeCIazbqwvlSnA
 P4le4cLLo1X8tlZaJAg==
X-Authority-Analysis: v=2.4 cv=BpuQAIX5 c=1 sm=1 tr=0 ts=6992f9da cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=z6PqFfQUvjP8iauf7AUA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: Zb9I6hQKuUEJi-oXHcMRf8qi-QQX5dzM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265698-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[fairphone.com,kernel.org,gmail.com,linaro.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9BB4D142A4D
X-Rspamd-Action: no action

On 2/13/26 2:15 PM, Luca Weiss wrote:
> Add bindings, driver and dts to support the Camera Subsystem on the
> SM6350 SoC.
> 
> These patches were tested on a Fairphone 4 smartphone with WIP sensor
> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
> far as I can tell.
> 
> Though when stopping the camera stream, the following clock warning
> appears in dmesg. But it does not interfere with any functionality,
> starting and stopping the stream works and debugcc is showing 426.4 MHz
> while the clock is on, and 'off' while it's off.
> 
> Any suggestion how to fix this, is appreciated.
> 
> [ 5738.590980] ------------[ cut here ]------------
> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'

FWIW 845 has .halt_check = BRANCH_VOTED here, which translates into
'dont check the state at disable', this one has BRANCH_HALT (i.e. spin
and keep checking the hw state)

+Taniya would BRANCH_VOTED be fitting for 6350 too? ^

Konrad

