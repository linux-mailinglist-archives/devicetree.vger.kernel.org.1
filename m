Return-Path: <devicetree+bounces-263840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJHOEEqJiWmV+gQAu9opvQ
	(envelope-from <devicetree+bounces-263840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:14:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D392D10C5D7
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A08C3006B61
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 07:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E984C3016F5;
	Mon,  9 Feb 2026 07:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VGwgBvvF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GO+nl4CR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2472FFF90
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 07:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770621254; cv=none; b=UMXtCAIWYFaEQ5yyoSByub96WFEmb14JM4QnZKGotXifj5z1Yrs4KY7o+ucTJc4aAeo1RwGGCGkyuPp5HHerHAThcw3s302+OrY/tEk7hUs515rcDmHsRpVjWzqRobbdPp+4Vt0aw3GhdSlYddxeXhWskFD/uFg2LrNiNVaX3Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770621254; c=relaxed/simple;
	bh=JbP10Ll7jjO1BX4lS7SqsxzBWutkXxF4vlEKJmQwik4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XhK1igFWkS4DSTr6NBxeKHSGdJpAuhxKevVS915qH3xsDD7quO6qj8MGp9jxSPHqAKUDUl5VPUSTHozyKf28t160vw3172HBidhDza3xUNvjJxOKGXVPgFsGAGT3JnWYhT8cKx0CsfcJ5w4r5ztcfQqVwUG+s6Tx6FukwVm5hy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VGwgBvvF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GO+nl4CR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195NK313347381
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 07:14:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LTrKUWGsHWKL4F+zsgbBdKHrJDXyVebCryhlKa0YcZA=; b=VGwgBvvFwf/gRjLu
	0VS90cNtGRJNOrcAYVTTpWrwqhSrc/s5lAZEH2QXgBw5aJ2gT6KaWSndhVGYGgUr
	And4D/NlwFTQRYkPxJZY6E8v5jH2qfwyay3IdNE6OP5eu14Jt32O9eUzHVvjRqv5
	9Or0Er8a421gd8hMAE3A3VXgXsJR+aemilA3kqEsec5ErNRrwAAXbNQLYckwcRSA
	eTZBKkdQx3dIuRVWbuFCzqRDHSDpwdHkSiVbVJSnUzKkmzbSmDvnSu0wQLucYFxl
	FBUEbEEB35OD1QmHdKD8g286LB1RQq+9cp89uHbsimM9MAwM2ZcnBvfU5u68KgmM
	p/ZaFA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy0c8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:14:13 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f5381d17dso2707763b3a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 23:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770621252; x=1771226052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LTrKUWGsHWKL4F+zsgbBdKHrJDXyVebCryhlKa0YcZA=;
        b=GO+nl4CRYscnbCgoTt5l3p8VyQyyzhjR+px07ral43JNK8T0bZzoM5YRvFE+1RXS5+
         gt8VjnPPGsYA3QbFrpj7X0fc9OUGZ+kt8VzZE9Pj4VZVn/36+1q/PQDYB5RDn6hBiTK4
         i2ekcLHFVJ8Ose6396CkFJAO+QVkBxmmZy/p5EdP5xyyUEqapr/TnSgNJU36NmJ6sJ2o
         nuNX6kC65OhYdUUj+p0aVtcEc9Nvsl5D187TPOsfCyw4pfjUSz6f0fh0lGRh0khml6Ul
         5TqJu6TyEc6ChOHwHmaPx6wy5RnueXIO7LQnCeBT1NSHmGAkpK7Q2C23ZdodpLHg/Lfi
         mjTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770621252; x=1771226052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTrKUWGsHWKL4F+zsgbBdKHrJDXyVebCryhlKa0YcZA=;
        b=TSRt5j10PNR3sjXN5fIdH0zKVmykY1WuvFiSnBH7ZWRUNpSi8muJnndn4IEyc0+XEh
         28GMA5elxygHytc2vWW+4Q/2iA+0XOcv0fcfZZ3QhD5vxTDtcj+TeO70zzWQRrRPaOCe
         UHcYi7q6jlCkq6BRxA12V3+k21KVqKIv2EBaMGOYfZKUg/NWexJMKrSbCWajRZG6P2CS
         Q+9RGNNoc+cLdhB3upDmLockrzfmOZjJdMGJjx2bINfpNHn96JXQKYRqiKqJlXkVXwjB
         MxEBC60VxrIBdt8+E1yjADlcaHayLMivKHsle1kDoaVnn4GdNqOwHtUajRCSdoh3Js/2
         phbg==
X-Forwarded-Encrypted: i=1; AJvYcCUM1T0KNPGt+6unjK9rm7kiuoXndeqleKCGMCGQcOcRcq/vgaKpgC1Bcw0xIHTf7fnT1rPjqRdA+VNR@vger.kernel.org
X-Gm-Message-State: AOJu0YyIpPN/hQXAseoRZ+SkV0UmnLKTXgH5gS5u/PUQb+3UzefoV92a
	8Qji1nVyh1IgiMmp6qn2/Gw7GalmQpUSpO7Dop7SmHl7HYlzP3gZrlWzymS7/OVHEGPS8vQA0aK
	kemVrp2Gz7fpZX3HSEahHh1ZCbeuQvtIr/OQbNIjgmQYiExMk1f7ip43WPCaHup6+
X-Gm-Gg: AZuq6aKq99yMaudgOyC61imSYxmkkNxSEN3JcUAMOJcng7VrtV8Ap2r7L/0Fb0kAob0
	mNcagymcEUw6EKjsngqriZlXXZBQ6rsMzNCPCCYI5uhBxBfgj83v7DPK/Ju+QhC8W16pkYmw83K
	ImP3Trxm671NBQTG+tKczITeT5dFk0ictgEjz9DCiZ97Yetk5yi1cQuI87zvidbzatlzpHdarAc
	oN8/9rUqqhJyWLO+eFDBys+d0RrVHTg9jSeb/QreQ5acBIuw6jE219kUqYT9+MEtT/NlQVrJta6
	ASEuNZx4YZckKnujuldvlVHd7rPkImXIotjKYG8zRJpfZuxmZPhEanlIRdG3onV0ITtIXIRzGJX
	HToucA9mEPT1Q8m1F/PzpWuWb/Uiq3jFc1jsm
X-Received: by 2002:a05:6a00:2296:b0:81f:4cf5:f252 with SMTP id d2e1a72fcca58-82441631fe5mr9348736b3a.24.1770621252550;
        Sun, 08 Feb 2026 23:14:12 -0800 (PST)
X-Received: by 2002:a05:6a00:2296:b0:81f:4cf5:f252 with SMTP id d2e1a72fcca58-82441631fe5mr9348708b3a.24.1770621252081;
        Sun, 08 Feb 2026 23:14:12 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824418812c5sm8755769b3a.41.2026.02.08.23.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Feb 2026 23:14:11 -0800 (PST)
Message-ID: <ede196b3-7ca1-40f0-98ac-010a56928b6d@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 12:44:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: net: bluetooth: qualcomm: add
 bindings for QCC2072
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260209070356.187301-1-vivek.sahu@oss.qualcomm.com>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <20260209070356.187301-1-vivek.sahu@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Gb4Kq2DDrb0QITa4Psw6VN58zVVkPkc3
X-Proofpoint-GUID: Gb4Kq2DDrb0QITa4Psw6VN58zVVkPkc3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA1OCBTYWx0ZWRfX+ZNqXOBQg9Wc
 x87yFwzcQCidK1KooTC2e0HR8u1BjJG4BbUdTGKYG3ZSXn1HxkMwger4/3mYBGnKOri46X9utgB
 7VKJrNq6n3ti/yWVXAbclyPZYs4I97SlMzpyZAah58/Ui9jobpLiNFDz9hePhENAtXNOU7ooQwZ
 /3zGlbhArDPYTJe1V4Jzcc9Wv3IPgAmX+/0qG+WfRhqhz+Xd2L2qWAIsk4LppI3mJgihCap4mDm
 b6bvNH2UzVAzCPZ/DqTi2wf5u4ARNW5/BgI5RqIbIW9AYxnwLWHSTGpQVA6bfIui6Jzt2yMqCyC
 rLeZIeMBcGLNO3imv/8hh30oRRHUeKlaCUX7sabqls6LrDVwnGLqVODPDT6p/CKZ6PZT4ep6S+/
 WKi9Yf1gta+kvECabYcsJ+uj84lS2kQgTobQ8jKMGjrjwU0Z1Zpu3uR76vXkPuGJrCTiDL+DtKr
 LG9nB5Zifznl5wlPiHg==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=69898945 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=X13vrDU6G3zPuaSVdoIA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263840-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[holtmann.org,gmail.com,kernel.org,quicinc.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D392D10C5D7
X-Rspamd-Action: no action


On 2/9/2026 12:33 PM, Vivek Sahu wrote:
> QCC2072 is a WiFi/BT connectivity chip.
> It requires different firmware, so document it as a new compat string.
>
> Correct the sorting of other chipsets for better readability.
>
> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> index 6353a336f382..1f47ad36aa61 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> @@ -18,13 +18,13 @@ properties:
>       enum:
>         - qcom,qca2066-bt
>         - qcom,qca6174-bt
> +      - qcom,qca6390-bt
>         - qcom,qca9377-bt
> -      - qcom,wcn3950-bt
> +      - qcom,qcc2072-bt
>         - qcom,wcn3988-bt
>         - qcom,wcn3990-bt
>         - qcom,wcn3991-bt
>         - qcom,wcn3998-bt
> -      - qcom,qca6390-bt
>         - qcom,wcn6750-bt
>         - qcom,wcn6855-bt
>         - qcom,wcn7850-bt
"qcom,wcn3950-bt" is deleted by mistake. Will correct it in next patch set.

