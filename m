Return-Path: <devicetree+bounces-264993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCSHOUymjWkJ5wAAu9opvQ
	(envelope-from <devicetree+bounces-264993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:07:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F3112C414
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D35630498CC
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8062C0F83;
	Thu, 12 Feb 2026 10:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CUAl9blk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tk6HeeFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26CF3EBF2C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770890600; cv=none; b=AUFe8o4afkXo71I3YeK81oVGkpXYrdh6J2zlSEDnT3wdyqOFjw+58GSxo3+fUlHlFLs2XrcQgkfcGvwvpyyJ3FyYC6BOgQo1YtFLsYxzti2qwDY5aGoNX62h+WQkoPl9Gm6W175OldXsAcdyaoKGpEGXwc7roEuReaJRVaNrsiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770890600; c=relaxed/simple;
	bh=X56/u8WeM/Y71e5qKoFPTOygw3DtBsvJhqfolLf20hg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xdync3fx3dz1Kgnbnt1t7Zh3tZwiw5pePiI7s4yVGJX0rxbJTO8DXqrw3h9XZ3TRAyQ+kHnoFgEP6axPOCM7gysWPQuA78jPm2u6h9HCApqLm4z1mZteAhOJ5Qi21anOCUuxg/lhw+443NuZ/s5GqpJcmy1ZVAaq1EHxIPJ6Df0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CUAl9blk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tk6HeeFS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3Rx6v272110
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:03:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+p1cN7aSBgnW4IUjK+ldKoLS/3oTMQXiZNUPzdstFZM=; b=CUAl9blkb6Y0W/37
	TFsPFM74ZiIoMmULLdirHaBpz3DTAOlzcGx4tPWszeI13e7d80pZiEQBJX0NfUul
	98iR4x6Bo1iTJbiutZtEU2UQ8c1a5Ti2lIG1MGOYwYze57A0TlC7CFmwq2G6FVwO
	PiIfQ5c0jNqryZA4dPZmXPbxwmfPnqvgdxkZ0FOR4AK7HRJRdevKWL4H+N+Ztjm1
	N2Uv0QZS6+DZf9Lw4lCNAkMEOladjPuKspmGUFeSXXdSz+azrtLUkL4BodR9Ihve
	kbTzrx0ex1wvbiq2I5UJfZeAJGms3MJhSCauqV+yzmkTfiH6IjjOd9hC9Mmr79eh
	Tl12LA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8y9btfw3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:03:18 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38a5dc3cso5100285a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770890598; x=1771495398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+p1cN7aSBgnW4IUjK+ldKoLS/3oTMQXiZNUPzdstFZM=;
        b=Tk6HeeFSsypulajC7V6v7vaU/Gnd5mk0GKYZHMfdfra3II+ylwiy+CcvL0i+WoWwII
         CiwtJSgXYdrIxutcgNw6hUL+BuoMOtYZrLe8rS+81P4sqQFqVCIR5tH9U72DJ9ICn8SR
         KQ9rTjoW0vMoZ5reu5ZSWgXr8oqUEa+CNZFRYs0LiM1oMyf02JlLyaKsdrt9U9LcFrIk
         kYKmpQV+NgT909YHOmB3X0M2usG3O2at1EA4E4onFxLDxzm9+IK8oIg5CewBXJ2Lg0Im
         CrOaM+pU6Zbu9vYqgQKmaHVab62mA6vwuI4nmJP5/jibR7tsyYOmQXo36HlrOYuqJw+o
         cNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770890598; x=1771495398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+p1cN7aSBgnW4IUjK+ldKoLS/3oTMQXiZNUPzdstFZM=;
        b=AC+vWMxuvKEi9H4hOy4UW8QzCjis4cprC8XrgfO9Z/T+iOPspfy6JQ0orFVylGLeqo
         jd8r9Vu0FhR+Buj703GJuwukeZae8HImITEFR/6EeCY2Z98HYXArNb7LZ9WeUQiHZ4+w
         ws2V57KWbfbY1tzmhgHLqojsL1IAA9yCXYxxwPxUld1ZFJHx9aP/wPUy5jsNKo7DsLk/
         91zUMdOF0JH7Duol4Apv8/oAUEugAcx3/0BX8ENpsbncrP6cRvHSwZCLPtNBzAHly+Ej
         xcrWuZABIUD2mU4Pcpw5Moc2QGr/mbv5x8M8nCqlewgQZ7CGWdmulypx4LH/YnrWTNM+
         mAig==
X-Forwarded-Encrypted: i=1; AJvYcCXlX5JeDq3fBHZZo4OQooA54lCeYlHesCU0c/7cspdm5/yoMidkggzhafx8TxZsTW063jaLwDiBlAs3@vger.kernel.org
X-Gm-Message-State: AOJu0YxP7OjPSM5lPtNtzdMlI4/vxMRmAFEOsugKhGTW3orOloxa5iQ2
	O0TdYZAxvS5YFo3iAA8+KhBPHb0UYc1Usk+gXKYnbf1k4lwm1BPfV198xKQaoA1r83UTmziOstq
	BmObegB5Xe53FdLVyS8GxpJfg9qvVqgmxARsJxfehR797QRIMngIoL37A4WMDX0z0
X-Gm-Gg: AZuq6aLv4goHBzqF2xkLbhJdIzOr+umVJ7e3KFSrZcwrV8mTt7WlXBEK0+K7vOsugiF
	Hvwukee2EFRIi8i20MRd8FovFUOK5+zx5aKRZ4Sd6isHTdaQo/czlP0Y7mliT0DqowYT0Yp/tyn
	9WZn3IQzjyvb0fUYz/qZLmaLs4pexJ2INEvakIKrn8YLdNgtBLAvFMrDCQYISm1QNOM2b0TZEPE
	zG4RD6eJyv/dqIxU+AN/YQqYLpdtnjd/oS6VVjTV3J0oqq4a5QKlwjZguj70WwGRtgK+VANNuVy
	Qf7T0YopmDfSe1TawKneQ5jNh7RCycWIGtiOjMHb+w9F/ntVtbHaS27U4MSW3CfxVN7Po8VwQ+V
	8v3nlxhCqr22lo5MfF4PjcNSrqds9r3nkm8LA9QmworOed1T4qfXhB0/djX3MLLkylLlBCFVAn3
	v2g9M=
X-Received: by 2002:a05:620a:2545:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cb33166e10mr206668485a.8.1770890597815;
        Thu, 12 Feb 2026 02:03:17 -0800 (PST)
X-Received: by 2002:a05:620a:2545:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cb33166e10mr206665085a.8.1770890597345;
        Thu, 12 Feb 2026 02:03:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f82e70799sm103896466b.8.2026.02.12.02.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 02:03:16 -0800 (PST)
Message-ID: <478f9622-55e4-40b8-b48c-f5589fa015ca@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 11:03:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1-vivobook-s15: add
 Purwa-compatible device tree
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>,
        "Colin K. Williams" <colin@li-nk.org>
References: <20260211-b4-vivobook-v2-0-9f500415d2ed@oldschoolsolutions.biz>
 <20260211-b4-vivobook-v2-4-9f500415d2ed@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211-b4-vivobook-v2-4-9f500415d2ed@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BbPVE7t2 c=1 sm=1 tr=0 ts=698da566 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=-Yt9tNsTAAAA:8 a=gxl3bz0cAAAA:8 a=MmgdznzwAAAA:8 a=EUspDBNiAAAA:8
 a=T_4u0W65Cwe58pMtjlMA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=kiRiLd-pWN9FGgpmzFdl:22 a=bHFXaHSPdiGCh6GRCv3g:22
X-Proofpoint-GUID: IbCjXck2ZdKZwE-afK6k-KkC7c1obJVu
X-Proofpoint-ORIG-GUID: IbCjXck2ZdKZwE-afK6k-KkC7c1obJVu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3MyBTYWx0ZWRfX85dGHn4sfRmb
 d0kmRPH6JcP3KORRZew6hLSGFrzdetOP7TOVZnToYLzcNufv1E+wtySCK/T8QYxat+y6qSk9FRf
 9LyFlCZydNlxSLeSi1PhkgKx607YuUyNxImvEzz8cB1XfybOjbntYV6OfmzS1+zoaGlKZo96Zz4
 SLpmpchoWZiIJyyPgZu9Mp1ub0sApQgsA8eC3jiSgZqSD/TWv2SAsvmuGC68v5qyA1w1V3NAebm
 wv4DZPKjpj0EU4iQXwe1kAMTfEoTrURQ8abzRaueKfQElVyq3aqsbPn2Ix0kHEXeaeM8pQZJyrN
 y8OhW8ih260+R/180/7xiClUU3p2MHzi0Z9Oav4wkIjwxltWLlAboma/kC7iHxfbQtS7q9iNOmX
 q4BmmkqXImhf1SdgUUVhFqVPExoTaOv6NaTutojrLDzS+3UZkt1gqrv/uoW9iqsTpqB7APEwFKl
 fxgcKTXj3ixQd6ZAxEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 phishscore=0 spamscore=0
 impostorscore=0 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,hotmail.com,li-nk.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264993-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oldschoolsolutions.biz:email,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,li-nk.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 68F3112C414
X-Rspamd-Action: no action

On 2/11/26 9:37 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The ASUS Vivobook S15 (S5507) [1] is available with Hamoa and Purwa SoC.
> 
> Add the Purwa-based device tree.
> 
> [1]: https://www.asus.com/de/laptops/for-home/vivobook/asus-vivobook-s-15-s5507/techspec/
> 
> Tested-by: Colin K. Williams <colin@li-nk.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

[...]

> +/delete-node/ &pmc8380_6;
> +/delete-node/ &pmc8380_6_thermal;
> +
> +/ {
> +	model = "ASUS Vivobook S 15 X1P-42-100";
> +	compatible = "asus,vivobook-s15-x1p4", "qcom,x1p42100";
> +	chassis-type = "laptop";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/vivobook-s15/qcdxkmsucpurwa.mbn";
> +};
> +
> +&iris {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/vivobook-s15/qcvss8380.mbn";
> +	status = "okay";

nit: Ideally there would be a consistent \n before this status, like near
the ones below

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/vivobook-s15/qcadsp8380.mbn",
> +			"qcom/x1p42100/ASUSTeK/vivobook-s15/adsp_dtbs.elf";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/vivobook-s15/qccdsp8380.mbn",
> +			"qcom/x1p42100/ASUSTeK/vivobook-s15/cdsp_dtbs.elf";
> +
> +	status = "okay";
> +};
> +
> 

