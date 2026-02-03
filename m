Return-Path: <devicetree+bounces-262270-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCktBpv7gWk7NQMAu9opvQ
	(envelope-from <devicetree+bounces-262270-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:43:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE0EDA0DA
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB55F30AB7C8
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8389F39E6E9;
	Tue,  3 Feb 2026 13:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EJNKeuTo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HD13s9Yu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F4439E6D3
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770125922; cv=none; b=UXjPG5Kv72+6RQg8VFRzXgid9Fe9ZViTr07DjVIHHO7TCfRf0tCPab/Zb5Vui/XYtcaViHDZKjJSP9D97p88L6As+C56tOJSdCjZLRFxAbolEzi+hj/WWcULDm2wF4XiULRUUgpMOfA7lZMlcRTtAwddfRZawK8ErR7TXwtM7CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770125922; c=relaxed/simple;
	bh=Qv73lmQbZYMBOKSAxEjZKP57u5k9Nfbua5LdqE6riMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nnE3Bx4Qz4+bC3HqvX6F573rRpN05XIxoYmEmfzrFBB0qbL/cUbEcjVKXMAeUFaO+OtJhcusp9YcKmtEYrbiPCjJW9EKR9aT3X+Lio8s1/kzaXRbOUBGrzWmpcj+uP+854jOQXadvpTUZ4JVOlERuGb6PK7Msxiwfpt4Ufx09GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EJNKeuTo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HD13s9Yu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613BlEd82418209
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 13:38:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W4FHKF8VjqcskeLt/BUuyQFPe04b8Hnj0qqZ8C6JMpw=; b=EJNKeuToChSWWyad
	uNiX0go4GD89t0Umxq/HHMW2LEfsQyCsJiuFfud9SQfdcJdufw3uj62sQ9ld15E8
	G8NNcAJw+78qRPF++fQvZVYWHMHM/OpJjLgUpuCDr3EebixSOjm76sJdgw+X/cSC
	X2q6Xfz+3vkb4D+nt9MVKYNMiZuioRCAjQsY4L2FQwGZdtuvvFtC4Jar/frKxx7/
	Oi4VfZ+zDOaAik0rJnaCqSb4AslhFGxsgyx2RXbFQuCeex/4tH+5y+cxRbyya4Fa
	DSFA2pCr5yFVk4PXiXIadGL9/sWm+MF9AgQ9V5zMsyIanOftqThoj/I4W35yU46D
	35Wy3Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gew89h8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 13:38:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c522c44febso133889985a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770125912; x=1770730712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W4FHKF8VjqcskeLt/BUuyQFPe04b8Hnj0qqZ8C6JMpw=;
        b=HD13s9YuaUKRvPDPOHqQquHmMsErqDirInOOnk3gTUpy5b+QNknRirCctqCs7uVuGl
         zWennju2YLtvxJVvqmJJ32WibG4qBL6ZQp3AAG1lNNWUJjoaQVzju9A2uqGmP8QtevqQ
         usa6kV5HJDO9T8oVmbo4Eepzx+YLNRH8a9zIa4BXrPKAEWpx08jnirc58qj5LSYKcPwz
         nGwhRtV+GM0SasRxTBVE3VWTUshakB24tbjNpV8o+irg4GCPMNkgR7IyD3jdQhG+uTDF
         c8nj7IAUAn2V8MRdNsqzRMcxDoYxnu5rYhmthQ3Mz0nelhY7s2+61Ha9xI6sRlvP7xxM
         3pbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770125912; x=1770730712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W4FHKF8VjqcskeLt/BUuyQFPe04b8Hnj0qqZ8C6JMpw=;
        b=nmaW8RhVsUAGP/UI+csqelFoFT7cywaxKaI9mXffkIURDKPvFWT0m7pJH1Lbvuty9V
         nlciU9piAgurIzF160od51C2AIsH/ew01OFe2HZYLr/Z37c/Nw6UKHnNC8fb4xYgGMBg
         A65/HY+rd6Y/dj9GMwi8GJH2iDUUsbFR7Ztjqn7AEDOzTtal+IFjOYUEjyGEdUw9AkRR
         tDCJqfCtkWIWxaG/Gyk4/aRxO/kTYJpOTNRuPD8c84bPZhp6HLhcY6bSCgwuUXyPmSD3
         fXV+u8tb4ZM3vHg2W/5xDlZ32cGcm7YfWcS55odqhZSNsUCCdVR6N024mQ7VegFuyKl4
         uRYw==
X-Forwarded-Encrypted: i=1; AJvYcCUu9B9m12roHMUESUO2xbRSSuG511Mt/xoUjSAGEtDsYwVYN31jfj7X01KgH5iAtUu2q6PVhsCmitoG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7LFuaKkpJ8G8hbk+2QVzHCBLnPxdlEOCOSL0xeexPP6rnno5J
	VmFVJfyTrWbUO78BInHq/TG2li8OilzqxSDIKlsZP1ZNRw/WlSAoF8bwI/WZX76v3cqTkS2QtJl
	uLqmngp9qdY5nNn/RUp/QtCszuY7e+B1h4hZIGguePFAQte75ZogjrjinMwG1v/LF
X-Gm-Gg: AZuq6aLNRbkPM2QvAp26sdVUYg83/s/dfmadQZ8023ylx/Sp9nLMIMOFEiQGcJbFftR
	Fb418jwSwsvzYkRFSY4NGIfT08XPNpS/F0T1bc76ysFUVCU/eiNG8rlaiuceLBaoZICsbHGsflK
	wSyLjVyuHKWZuh0p1MnFqCQAHwm80FFIoUIgK9haJlaEqXT/jd2X4QYTTH4l3lBSyqpzSSW1xuD
	Zy7oJ2fMpZ3zunyW/n5IizOXLF97IS0M3PxlQQ9ieYuJcJ5dOush9dMwAInMEAmF0SC+Ex/LUYt
	SRhRWnudkz58ETI6pH8Mjm5VSgnH3zWNklRS+70BvAQwVgw19LzLDEGM5Q8hlLICcFy/ou/UOQx
	1c6qcwpFW9Yfw9TuwJGRzrR6HVFACwJCtg71TQO0aUBs8wkHFAx9pYuPyBcX7t6HWQPY=
X-Received: by 2002:a05:620a:4506:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8c9eb27a8camr1419765585a.3.1770125911794;
        Tue, 03 Feb 2026 05:38:31 -0800 (PST)
X-Received: by 2002:a05:620a:4506:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8c9eb27a8camr1419762685a.3.1770125911265;
        Tue, 03 Feb 2026 05:38:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8de46abf6fsm827564266b.52.2026.02.03.05.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 05:38:30 -0800 (PST)
Message-ID: <ee0fe165-1764-460f-ad6a-9633b06776b2@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 14:38:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 9/9] arm64: dts: qcom: qcs6490-rb3gen2: Enable EUD
 debug functionality
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
 <20260126233830.2193816-10-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126233830.2193816-10-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AImbN5yp2D_1x3Aam_62Q9HFi4LiKH8z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDEwOSBTYWx0ZWRfXw5efUI+SWa9S
 LttiGmyUkCvQMQDV1tEnlwNGtyo/iCggotqsZIs7/SNIP2w5jJdYuP/TMxBYUknYewYB4rvNCyx
 H/oeK2co1FXVFQm15VxdvDBs8S2clVqN3XbW0GJJFYuq2bNzRzYUI85u027WzfIwikb79z8Mfhe
 /76Ch4RDQoBEZomEpSXGPenWzRPttnw1bTk87UyBgfWr1gk0QxMWgbhZEfk/c+xPD+pZbkiaAbp
 Z8hgJRAONNe4iIgbiM4sDYhmn3gQAE5bhFWgumDAsHH07Bs463e3A2J10Pj4VjnxmAc7cv0qxrV
 eGt30h0FTgUtpK2OYSHyDBOJHC+5uWIjfuM3cqfzgb+p50HXSLA4xB8yj791mt0ubp+n9/PqF93
 smtldPtNwBhf1+WM2Apx3SxDTsVlNazfvf5w35hBoWTW+/yi9uzQssZVgsMp+pKEn4iw6yVRWcB
 /hQrM0wQiDLsjlk29Tw==
X-Authority-Analysis: v=2.4 cv=XI89iAhE c=1 sm=1 tr=0 ts=6981fa58 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yEEpPANMKW__IVoBb5EA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: AImbN5yp2D_1x3Aam_62Q9HFi4LiKH8z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262270-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7CE0EDA0DA
X-Rspamd-Action: no action

On 1/27/26 12:38 AM, Elson Serrao wrote:
> On this board, EUD resides on the primary High-Speed USB data path between
> the connector and the DWC3 controller. Update the device tree connections
> to correctly map the connector and controller endpoints, and describe
> role-switch capability on the EUD primary path.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index f29a352b0288..2fc2d0aed8dd 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -194,7 +194,7 @@ port@0 {
>  					reg = <0>;
>  
>  					pmic_glink_hs_in: endpoint {
> -						remote-endpoint = <&usb_1_dwc3_hs>;
> +						remote-endpoint = <&eud_con0>;
>  					};
>  				};
>  
> @@ -1176,13 +1176,29 @@ &usb_1 {
>  };
>  
>  &usb_1_dwc3_hs {
> -	remote-endpoint = <&pmic_glink_hs_in>;
> +	remote-endpoint = <&eud_usb0>;
>  };
>  
>  &usb_1_dwc3_ss {
>  	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;

The on-SoC links can be deferred to the common DTSI


>  };
>  
> +&eud_con0 {
> +	remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&eud_usb0 {
> +	remote-endpoint = <&usb_1_dwc3_hs>;
> +};
> +
> +&eud {
> +	status = "okay";

And I think it should be okay to keep it enabled by default

Konrad

