Return-Path: <devicetree+bounces-263754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCzXNUQMiWng1gQAu9opvQ
	(envelope-from <devicetree+bounces-263754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:20:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB9A10A6D4
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E737A3007CB6
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E03D35BDB7;
	Sun,  8 Feb 2026 22:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xvn56QZG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="esVkI5uz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0944422A1D4
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770589250; cv=none; b=VVGq/xNytnfp7XvlNgSWOWq4dBsz+M8QvG9XiRx6GgUb0ME4m1s62u/LrIB+zX+FmJ+Chzdo8WulpLmyssUOVmG62usqXF9XcTq6x9P1Ga5GIiwaUzqNwtpJQRgaPC/0zq1cm1L7k2UNE/Wy+otmaTosRrTOSJCCf7Zn9ShI6Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770589250; c=relaxed/simple;
	bh=Fv4piyY4blmqEfkJfGSo/rmI6oNAYODD8w+D8WJHy7I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fWnQgeG8GW2d1RtV8LgGQCd5Z9c4BdGl2/TTs+6H+WncG8cJUycN+RjZgkXTo12rOYfA+FEk/tTpwhGxT4DrLciI4RJyEf0Hdt1eF6FxZxQO2avHkTps54SEcQpfUTGSrVGqsjCjdWenjYAyql1skEKQyKm0KgNObTu+7VtCqd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xvn56QZG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=esVkI5uz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618LeoxM1571147
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 22:20:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Tii70vHyMPm/+uQbcy5yn6da
	azpBYRKvTdFvbRHtSQg=; b=Xvn56QZGeY5PE1xtuhyiVYNc69BQrmVcNpJMOJff
	/HGmj0ohH2ZlxUoFH9aPn90sNqu4KZ5B5paYf/DJg0WHdYyTZM8QlcTbGk1+OUMD
	RWs8vzKtlgUm0d3VPxh6Pd4oXkmKPi8TTTojzRLgz7+TnbXSRiRcw3fzeupRQVPs
	40BdfKrwmVT+QgVgTm7iNWoJZiN5Umkgg1zsNgo+O547v5COMR+AOz6jlrC4xDQ9
	KKQ41W14qaizJR791JoJK4zy8xtdJ8Bky0UTEU29/JPz4N5a1v2W1n1rSPjCbkyk
	dpw0Sw1a0XfbB10vbuJLoCxSy0aeF39pAK0cRbvNp4RLCA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xccu0gx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 22:20:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71655aa11so1708144885a.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770589248; x=1771194048; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tii70vHyMPm/+uQbcy5yn6daazpBYRKvTdFvbRHtSQg=;
        b=esVkI5uzS0zu0TPUkCLQi7cWyqA6x5j1hIUsufbzwZpC6irhFWVfPEiEeW7x3A/85U
         +NFQQ2Z/PQy+OWh/JpIo8LMig8+9yV8LUSjsPZqUCI82AHFo/jALOXYxIPBBisgYZ+Hi
         3iz88ATQ2FaNzvC7kCwX2wEkR1Po+Jc2q/8cOPuNArW9yGJDoDoKv5M9+KtfzQ966YsY
         g40+NRajTZIUzVpFFLtSWdBo2nJItLV3ECQvDe+WnlLjnVVcvHufeCd70VgPzk7Ne2k+
         QhsS+kOxSZgF0QehcRz0j+UkKzoaL78j60V/XCQv6gGwHSP4mVLD3nydStE0R0l1J6kg
         R4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770589248; x=1771194048;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tii70vHyMPm/+uQbcy5yn6daazpBYRKvTdFvbRHtSQg=;
        b=tRRPHk3z/gg0r3Z8M8PRdPPA3MBCoqPLVhcstK1Engj3UriDLeKwFV5rUePWAFdhZl
         zP4aYSW5HLVCXke22GMZG7hxOsWxPSjV8ZrUV0TBY6CCT6Q/mjun0H1xRdPX8/NjhBat
         W3owIWUPfWISepoqBDmlmW+TrJxNoBShP8yDoP4FeSe39ZhrpwsK/SXOsO6SQTOGPWwK
         gtmKW/jo5VE8j8W1vxi21j15GK9vnIqaKPjTvVUAJ5NDHekOomoSE8RBWT5ZWUPK2y9Z
         3l3dEVMEjNcYyJLy4ZpPL7uv/eC4NiU4q6Wb1VbSA6/k7cOkGySul5INpCH0DSOgQQdd
         qxPw==
X-Forwarded-Encrypted: i=1; AJvYcCUtn71W9qmOfpdA2zSHYmUeL2Z/wOk49+uJAVoiVdEyN8aV0aWqimkt1v//PyJJC7C6FITgPp1ZeF1Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7OwXfyEKsTFirCVBIUqt9ibi6srBdOkQ9rtUT1rmVH/HCKjqN
	7RJGF9/s8AFtF/mCfZ8vyrBv4zHb4BlJa18r3ddh4EReAmdQsCmoQcc8nYAzYm40EURdbt5WNLT
	tWveUot0Tqc56iHcaWeA7IcHPsrtipqXJONrvtPMv2ei6jE/m+ZiFkd9Y4muxHZq0
X-Gm-Gg: AZuq6aJHYDxIOvJz+FlVMyXzDfGEJ5WDYLVM+YQaZSewi8wEBCqxn8ITJU4u1DuevMN
	/7iIMnRRsQFwaRvsD2XhRPPB+d+UibAcGB0dGJklhC9VnR1fRx0iq3l46mzO9DtWI9/3Vrv5Rs/
	MBLpPpm1MaBE+IbggQxzPbl6FoJjFUZ0iDsMUKpoB5Fply7DU+hxJwoShFwOQdD7xEidCY4XLj8
	ncrWRscmoafIRl6BZn4aNAWUA9sx1VSEHJAMQTwz3yMbhJx2Nu1GJnQ0iLM9X1WHpTzDnDNptoQ
	nBMUvbGJnnh3h1l3o4rnZU/nCXEwyqlnBdAhdo6ZGqJZAelVk4MLe0tUJ5kRJRxUhVgkDaUBQZI
	EmHLGHg+Y19YllK96BcsaD5KqXOq3tF+WEP6Er9abDpF8v+5r7s8TdhGzNNi3A+0K2hBQB2G29Y
	/I/dxFf2wj5rL6Bvg+ITIZzNU=
X-Received: by 2002:a05:620a:19aa:b0:8c9:e8e9:9bf5 with SMTP id af79cd13be357-8caf0d3d199mr1220601285a.53.1770589248172;
        Sun, 08 Feb 2026 14:20:48 -0800 (PST)
X-Received: by 2002:a05:620a:19aa:b0:8c9:e8e9:9bf5 with SMTP id af79cd13be357-8caf0d3d199mr1220598485a.53.1770589247769;
        Sun, 08 Feb 2026 14:20:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf713fsm2185090e87.1.2026.02.08.14.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 14:20:47 -0800 (PST)
Date: Mon, 9 Feb 2026 00:20:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: webgeek1234@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Xilin Wu <wuxilin123@gmail.com>,
        Molly Sophia <mollysophia379@gmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Add UART15
Message-ID: <73tz34sp7ojoyenzs7jnukcnxxgdykjp6uv5itep2kxr4prtpd@3ij654wkgsxx>
References: <20260207-sm8550-uart15-v1-1-d8ccf746d102@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260207-sm8550-uart15-v1-1-d8ccf746d102@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE5MyBTYWx0ZWRfXyjn9cjJ70x+a
 +8Yjvd2ALVlzhwzsGUwChLZFGLQcjZykbh5w0HZAUabpLpP8z4QEA4gWX+V+wv9R8Bas57bg6Ab
 EkYtDf+tu/JNnsueYx+MaHL1b/HDJt15I4O8K87Ls2HZlytd59x5ln/SNrjDMsDp/GVyKAv6xxC
 Q9xajyb2OiPlelJpyawoHHn3wxxD5vVjUkZcFq4hvqt4mqwSFSbrvPiHeYO1WwZY/9nJQBzgzES
 zJh7lnddYyaC+4lWBXojXG33FFDt3mQGxt/V4xjJf5j6D4K6LNOFIjseKf+LnGgh2ODdUhVrRzB
 iEx9KoKrl67HQJQcQv/bH4r9ZjNI1piAPryX1G4n1Y+kUTrHEzSNrjXmwyTb/Z0FoqRlYOfJ24F
 Rdgiwyzn/zGj7EMeJV117idxYFTLdgCtBu4sxtRd5BwZyWr9+YmDGyUwBSdHplmN/ZgGTb5lCJ/
 pM5QhabAsFRCmjESnLQ==
X-Proofpoint-GUID: g6sLCh9J79WYWHkLmHOLlv930qdqQnVB
X-Authority-Analysis: v=2.4 cv=ft/RpV4f c=1 sm=1 tr=0 ts=69890c41 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=Y1v1FbmeWCRP8vb286EA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: g6sLCh9J79WYWHkLmHOLlv930qdqQnVB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602080193
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263754-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,9c0000:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3EB9A10A6D4
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 08:18:17PM -0600, Aaron Kling via B4 Relay wrote:
> From: Xilin Wu <wuxilin123@gmail.com>
> 
> Add uart15 node for UART bus present on sm8550 SoC.
> 
> Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> This patch was originally submitted as part of a series to support the
> AYN Odin 2 [0]. That series stalled, so submitting separately.
> 
> [0] https://lore.kernel.org/all/20240424-ayn-odin2-initial-v1-0-e0aa05c991fd@gmail.com/
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..ec172c22d928c4d73313c7b4980807760995ecaa 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1251,6 +1251,22 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
>  				#size-cells = <0>;
>  				status = "disabled";
>  			};
> +
> +			uart15: serial@89c000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0 0x89c000 0 0x4000>;
> +				clock-names = "se";
> +				clocks = <&gcc GCC_QUPV3_WRAP2_S7_CLK>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&qup_uart15_default>;
> +				interrupts = <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH 0>;
> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 0

QCOM_ICC_TAG_ALWAYS all over the place

> +						 &clk_virt SLAVE_QUP_CORE_2 0>,
> +						<&gem_noc MASTER_APPSS_PROC 0
> +						 &config_noc SLAVE_QUP_2 0>;
> +				interconnect-names = "qup-core", "qup-config";
> +				status = "disabled";
> +			};
>  		};
>  
>  		i2c_master_hub_0: geniqup@9c0000 {
> @@ -5095,6 +5111,14 @@ qup_uart14_cts_rts: qup-uart14-cts-rts-state {
>  				bias-pull-down;
>  			};
>  
> +			qup_uart15_default: qup-uart15-default-state {
> +				/* TX, RX */
> +				pins = "gpio74", "gpio75";
> +				function = "qup2_se7";
> +				drive-strength = <2>;
> +				bias-pull-up;
> +			};
> +
>  			sdc2_sleep: sdc2-sleep-state {
>  				clk-pins {
>  					pins = "sdc2_clk";
> 
> ---
> base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
> change-id: 20260207-sm8550-uart15-9b7bd48e747d
> 
> Best regards,
> -- 
> Aaron Kling <webgeek1234@gmail.com>
> 
> 

-- 
With best wishes
Dmitry

