Return-Path: <devicetree+bounces-320055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /vCLNRebR2pFcAAAu9opvQ
	(envelope-from <devicetree+bounces-320055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:20:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F44701C53
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:20:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RmwOdMMt;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Z1OalHRF;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320055-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320055-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2145301DB84
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 11:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 664923C10B0;
	Fri,  3 Jul 2026 11:15:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097C93C13EC
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 11:15:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783077328; cv=none; b=Ce47cqdQXQUDlsj00IvqlA1ACvUcyzNshGeRx/5d9H9APzI43kT8fdbuAdM/YixOQM5B5574OFjkfLyf6ecQ5ESZ1k/Jw4Go7whPlGl55PrXj8Zy3MTuXLDoNg/UI9XyaPZF6GDM6F6bAzvpo7kWh6REctPfhEOrejsEhgnWd9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783077328; c=relaxed/simple;
	bh=fh36BDF5Wbj/PXKC4YWBxl1j1DTIaaaH5aqUWXZOVrw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K8S+rle1R6gErOVjTuTPLHhlqkiR9UPRltl8GIg4XF5vyjA4kjL/EzO6jMzWxZCKG3VH8QmafkulTvR2TGop2TPqwQMnSkcA1pSRcqJCpXtqdGGX5Rr+nCIFVBzyWoxJX1lbgMe7Z8gHSymBGtJithftcpTXN+F4EGgVIpu3AS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RmwOdMMt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z1OalHRF; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6636hNUS3144575
	for <devicetree@vger.kernel.org>; Fri, 3 Jul 2026 11:15:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gsBCA1giK0XVWDpPfKpAgEuh7s3EHL6OztVzj2y8Zj8=; b=RmwOdMMtKyw9kFMm
	O9wPwrVqt29KlawWaGggpSyZgOHw+QkpxFF35U2uC5UuXLe+iSYtEcp3tb5xxmEC
	uKkImPFEk+lP9XBHT1io399Umq6LKNsPYaSwYtenfqrcFsyHgytTmF4qFGmiui0n
	DRl1KvaU4G+w1LIcz9oxkt6j5Xy/5zY7UFg9ehYlpMx5ACqYNJBZyYxWBlahk0yR
	wWTzgy8lvegErjNZeabVDcKHlbtw4rbiXmRb9FCfazrlLL5ovSMgehWJ9RkA9wOF
	PTyCh+3E3y6zJeGEOBn+bYKxMAe3sY8Y+NpvsFU47chwb8zN3XFKdpR3UVIrcWT4
	gFUhuw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f682brytx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 11:15:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e4ecd1ae4so8856485a.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 04:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783077325; x=1783682125; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gsBCA1giK0XVWDpPfKpAgEuh7s3EHL6OztVzj2y8Zj8=;
        b=Z1OalHRFyjhFEyLi8rIbnWfm0DAuVl1bY6yLDv7NAUoMeRja7kH0pgL4S27AumiZTJ
         koEG2sSp1M8yt3GWKu31MiVJpUK/96OPK+r2dKRmkva2UX9RmFTZMy01mD1AHrjCAMIc
         i4YvH/dLyxDTK4H45uV8+HV6ec42YcdTM+aEvuIyA6GyRDLIPxklo3sreuD35rueOKag
         g2UL92HvRdlcjS3RzWSPmTMrugVsqXW5Ozx0enAHC3tuLQFyGB2kwcPT+5R5WnqS6adi
         p39BKzy+5g0seJPTyK7Cu2QNzlun0DaMIaVTaAbQUsZEXoFI6ugQR1u/XHDZ/XYk+yBG
         CUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783077325; x=1783682125;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gsBCA1giK0XVWDpPfKpAgEuh7s3EHL6OztVzj2y8Zj8=;
        b=AfNm80HZ1Wlplh/6/bTDT/J9s2FHGnziSxNefqSRv+fwk8EfXZ84RKEaquF+vi1Hzg
         3mg+iH6sJpL9upV2kcWUfGTV4y2kQOExrL2qdYC2ZMpJcNZn5yuuUiAekvddsfPtkEY6
         e9RyndSl4ky5JLKZV4HaYT/IbkthzIZIRhz5FyVCCHOvZ1fC8bONcCrJDg9hkmEnlWZv
         nU2+MoF0xz9LkZAl5RR+hJIy+F6pvq88a9vxb+iWxg7K80s5R0KhFvOsZMir/2RAQNQf
         KSctHGEqORJV0/0CC772Z7GMN5AZ49XEMO97BgnEZNKBc5mn3rI+4/oDKGLN/SAzRrin
         3M8Q==
X-Forwarded-Encrypted: i=1; AFNElJ9oD636XbP/TDqT5PFFih2iol6lsU46dxWvoJZPwdM1YRuQ5mYUKPXA8wiJADzoNfpA9ULOJ+xD+CHi@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlja5Kfe4GsOUMwpCTUks3pZIpyY9zT7UUH6GwZUK03BT6SSP5
	Rj4tcOS40UOwFM2PQt12VHncExCNUXR8SfVtT+fU594ODZAVXWS5Igaf7AmPA2VhH6Lr4eHSQwy
	2mwybewvUwQSwYqzh3Km+ZCbEhvhSp+v+yX+t7H/4WmpFNlSWR+pjalMgo1Wl6nrF
X-Gm-Gg: AfdE7clGlGHJiQvfIw/UzgjGhApsBg+jeECRbJNVE9ou4ruMYXTZ1utFLiCSoirdLbK
	KGdM4mLCR3ASheh2IXmsKRKncS1NwJieg3fcK5WKxcb4ude/ADpYZhkjCbGGoXbkNm1KaJiUrqg
	2YWX4ov4WSHTqWTFuwpLehqvM7nJMjW/ksII3OykswTocNNGoupXdp9KeAkIpxLHTEKld3B9PG2
	go/qog8RjteKv4w3TlrtqPPcdxHQVXmDKhDzkSpjgYCG8VbUAcCyNxPOX1Xh0kKBukrxDlvfouW
	Ay+Q3CCBbQOyOnsxSqY415SzZPHPM0DuE2ZNKHCiQINxPv/Fq9lfM/2iZ+tIRpFppho3jOGB5oy
	XGBC7vcaUsZKqj4Eg8ExS
X-Received: by 2002:a05:620a:6482:b0:92b:2a80:3ced with SMTP id af79cd13be357-92e782d254fmr822405685a.4.1783077324542;
        Fri, 03 Jul 2026 04:15:24 -0700 (PDT)
X-Received: by 2002:a05:620a:6482:b0:92b:2a80:3ced with SMTP id af79cd13be357-92e782d254fmr822398385a.4.1783077323810;
        Fri, 03 Jul 2026 04:15:23 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b6095b7dsm268392666b.19.2026.07.03.04.15.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 04:15:23 -0700 (PDT)
Message-ID: <76d4b184-e089-4dad-90d5-96da762c1fd9@oss.qualcomm.com>
Date: Fri, 3 Jul 2026 13:15:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] firmware: qcom: scm: Add support for setting
 Bluetooth power modes
To: george.moussalem@outlook.com, Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Sumit Garg <sumit.garg@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
References: <20260703-ipq5018-bluetooth-v3-0-62da72818ab3@outlook.com>
 <20260703-ipq5018-bluetooth-v3-3-62da72818ab3@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260703-ipq5018-bluetooth-v3-3-62da72818ab3@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDEwOSBTYWx0ZWRfXxcD0OU2HAVcK
 UyVto0D1/XpTKAGw3PWI6XHivRB4Bv3evHxAVxL0ogAu2Ck3zeAyCUL7aCOqoZojXYbFq0nLXD7
 uW3bWhXf9vnbE+2z7KsEoTto+iHbY9mqDxQytz1xQkBjds0XhRZ0hV6moZHFAZOcNLWzPneHs1G
 BhsmjCQ4DKlgen6YP6aaUmOLzd2Kh4VUrKbXrq0ToaKilE3kHLcllaROJO3c1oLP+oCKvQNwDCd
 4R6qh0K37iNuCuhdiN4jSWvyfgKQPQ0pXufiwveGpTB5faVeWrEmv5v1ENu5P0Z1rUeKht2ROU3
 Gu5W+tgy2Omt5ciAc+jiow0hFMpH/8bp7FpNUTEQ+sjrr3AItP0pMIpspzusVYa8ECJFFXRJOoh
 tTV7x3xQ8yRqo/cpDwAoOvxMS2z+PjEQlN0DONRUVfXeKdR4+5lzRP6jcv06R8BgarUb4KMGUjL
 8wMLLTv5CbA8zTEqGpg==
X-Proofpoint-ORIG-GUID: jPc3jVxULH7enrarwxryM2jhvCqsKgWn
X-Authority-Analysis: v=2.4 cv=cc3iaHDM c=1 sm=1 tr=0 ts=6a4799ce cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=EFz_iqN25vaghz0NCYEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDEwOSBTYWx0ZWRfXztOcforaCtwl
 PD5UsradcWbDCpxc3DiiP5s3fwPAj009dCSiNJSMHGMXtIeoLzPc3kGr6Fk8kWV2x0uYlKNtSZj
 b/c+bj4iOzm5ex0ttXd0P55sTiHs/C0=
X-Proofpoint-GUID: jPc3jVxULH7enrarwxryM2jhvCqsKgWn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030109
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-320055-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[outlook.com,kernel.org,holtmann.org,gmail.com,pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:george.moussalem@outlook.com,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:p.zabel@pengutronix.de,m:linux-arm-msm@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bartosz.golaszewski@oss.qualcomm.com,m:sumit.garg@oss.qualcomm.com,m:mukesh.ojha@oss.qualcomm.com,m:jorge.ramirez@oss.qualcomm.com,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,outlook.com:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 70F44701C53

On 7/3/26 7:01 AM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The Bluetooth subsystem (BTSS) on the IPQ5018 SoC supports setting power
> modes which are required to be configured through a Secure Channel
> Manager (SCM) call to TrustZone. However, not all Trusted Execution
> Environment (QSEE) images support this call, so first check if the call
> is available.
> 
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> @@ -105,6 +105,7 @@ int qcom_scm_shm_bridge_enable(struct device *scm_dev);
>  #define QCOM_SCM_PIL_PAS_SHUTDOWN	0x06
>  #define QCOM_SCM_PIL_PAS_IS_SUPPORTED	0x07
>  #define QCOM_SCM_PIL_PAS_MSS_RESET	0x0a
> +#define QCOM_SCM_PIL_PAS_BT_PWR_MODE	0x21
>  #define QCOM_SCM_PIL_PAS_GET_RSCTABLE	0x21

0_0

collisions here are *bad*.. +cc a couple folks for awareness..

Konrad

