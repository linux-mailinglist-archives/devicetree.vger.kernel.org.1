Return-Path: <devicetree+bounces-274704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFT/Kg3nsmljQwAAu9opvQ
	(envelope-from <devicetree+bounces-274704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:17:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBF2275698
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F73E316BD8D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684D43ED11B;
	Thu, 12 Mar 2026 16:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LnSXq2hf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aZzHlXaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96E3E5586
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331820; cv=none; b=EM7zzkMFGxSLb+Dc0XNiHzD0CkLOX/xqUW1VJnMOhsQfDzvLFQZoSkJ2ZHDf7bjcbbcAUA4v4YvVyirXg/GoOoyt4I5ZCm4b1Y58zmIOKV0lFsY0kydCe9eck+mwxrH1fIXpeetcMXHRiDKhkcy3ypysZHr8pTDue+w+AxAljPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331820; c=relaxed/simple;
	bh=ZOmnShTuNBzLL2hRyVNZPCuYTBxxQ02CCrSoZtvrCr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AHCICfrPWatnfAGrYpfcjgGfmLXwjQC79H3pB5TbpfbMk33/EijZ65hZG3xvV+Df4CiIsF9kk3cWSeVnq3+EJ+6KBhkdgky1MT+30Ewa+e9r6bbME4aSyFsp3Wnjoctm36diTeZSqVBIx8s2E0H+w0gT00j8wiRIU4p2zO3wxaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LnSXq2hf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aZzHlXaL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CADiBt3666503
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:10:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JDLExPcvsDULyL4g7f+9Q5zgZba0f0HXxjirJgVkFbE=; b=LnSXq2hfrMcAlCxd
	5X0eRLYA50gnUghuQ+ebIn2wFN6/EgT/vApYTlTftm1ugyNT79iiaXVoEQ6XNYL1
	I+zerzVOZfeZwMHFmU3GO82tiejU+N72JJTxadh1yl/N/JI1KCC/EbbQtg3JvAg1
	HGOZIYUaruDROEdDnNXcIjTU2gTS0M+g7GI1aW7/D5y5twy1OFNZEOhje85NHDCw
	5YnE1vpeHT9qkx+esLbJJQHrBNVnZMMDGEfY3patJM0UjU+vgeuxHSXr3nyidQS3
	pVIM8N84xXYcrRaXuNqvknzOTuFVV5QjrVq2ALW1LAY8jNNdrRkT6vID1dzT3tRC
	5r71WA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh60jrp7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:10:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd77bc8186so1110085585a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331818; x=1773936618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JDLExPcvsDULyL4g7f+9Q5zgZba0f0HXxjirJgVkFbE=;
        b=aZzHlXaLm7Q/xYCGa75S7dQI4bg/+6teM1aiSrR62JACRgsfzC6eW24xlFouWP9LeZ
         zKqQ25lbx+A1f99JJhvK2oEmvgkn4Zq9jeJOVyRPBYZja1AfQRmUEIkq8fJjt95iceke
         d/RmDeoR2vL12mvURpv1NC0N5RvMHZSIqYX2I3cn5EPCdGKlEGRtDRhcWNv8N7fGYh8N
         t3DqyeaCekg7wXSK0zPegDPhcvzDVJY0WJZKhU/Om7V0QkKpcotxS88VsVTVkX3jOzfz
         FO5EZMi5X9LWanI2/H4lvchWItmJhxyBT/jsOgbQ5kht0eumjOTZDXJVaR605PMiRl9u
         y16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331818; x=1773936618;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDLExPcvsDULyL4g7f+9Q5zgZba0f0HXxjirJgVkFbE=;
        b=WqHVSMCtZtZqbFuQ3nCo5rSH5mgEUtQwB+ruDBKCjv4gGjtlgAElYcVcwdZC/7WpUG
         uUOM1SYSue5QrixgNMo4ZPRrs8Ilj8gHURo8CSaUxeLAT32LOu/yR7xR2S2MYWX/N+T9
         gQ2Hvd4o6uniDFoe9Xxvd5sXbthUR/dYDfAyjqAouQUrX2dzJ0se5JwPQRcffQd2oLfp
         Ka0w6LUKXZZzuduTT4Uc2klk+cIXeyKWwZSPRQrHlnQwB5dXrRvji9Y6mTNirRsruz7b
         QkY1iL3ttIw4mmbUeRob4FT8CW5wdOyrieSv0uKyf5dplDjA2rKyJuAIHG0xP2Y+gepG
         MaDg==
X-Forwarded-Encrypted: i=1; AJvYcCVA18MJ+oJIoqXiGcV/6Xv+b+cV2sl7f4UBtxLo7y/NsLRX2A8QNuK38Y9hvvxyOIwCutiE5gS0vzKE@vger.kernel.org
X-Gm-Message-State: AOJu0YyfKrawLgLoByrb3PVYVy+ddG5atjqbdR93agSASKqL6SOk/U37
	Z6MhOK2QGnKewFACt6QLj0ZKWfQ2ByEqD1o6ceTQRuTzaYgDPlu9eXjBCKOrxLzPo+62S0rFOKV
	Z3mak9D0KEay/hYdHFXpCYbLMCb542WTeLS2Aj86XTfHlQO6ef0OO3n3QFhqiuRYQ
X-Gm-Gg: ATEYQzzwFx9bj9zAip+nV7fCAWp4nYYl6TYSvGc4OZMzLos1sv8bWNDrxGKbEWk7qZS
	LajTpPe5pNxdj+3OAJArgVNz6bXXzTTkOxE4mioTgyMsLRL+aUVUP9o8OXeQs2vFTZANkpMhFzp
	MBvszQvG4M7gX0eY+mzzahdDrI5HjkW1cIsfYNTqI0lJ4bEKoThmaMPnmUKIFDwykvUalK2pd1K
	tDEmbBAWRNUKy/28v0y9CBqyg4kKvWrn6cNyZvCcBa/z7eIlH3jWkntqKGAjnRDduDieMHKpfXK
	qiMhkwU8uAqSO7guoLMEgFj3Hxe9DiXftbWKEV7qc0auRWvfDBTaTIcu6ORK2QSqSQQ8cikaYt9
	cFod2lm3UUr88NxAUeIh9DxHvl1o+hGFtkXwIjPtrXG5QSnz+
X-Received: by 2002:a05:620a:4892:b0:8cd:8bfb:a4e with SMTP id af79cd13be357-8cdb5a00407mr42134785a.4.1773331817511;
        Thu, 12 Mar 2026 09:10:17 -0700 (PDT)
X-Received: by 2002:a05:620a:4892:b0:8cd:8bfb:a4e with SMTP id af79cd13be357-8cdb5a00407mr42126285a.4.1773331816982;
        Thu, 12 Mar 2026 09:10:16 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f708sm338393235e9.11.2026.03.12.09.10.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 09:10:15 -0700 (PDT)
Message-ID: <24b9ffe9-d21a-4fb6-b9dd-b6f2ef5def6b@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:10:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v4 1/4] arm64: dts: qcom: sm8750: Add display
 (MDSS) with Display CC
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260310-sm8750-display-dts-v4-0-d571a786bb70@oss.qualcomm.com>
 <20260310-sm8750-display-dts-v4-1-d571a786bb70@oss.qualcomm.com>
 <t5e6iw6lhbig4mub3ot4jofcbeqvz7v2ncltlorsun66pqyxvr@3g4acm5bi3ga>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <t5e6iw6lhbig4mub3ot4jofcbeqvz7v2ncltlorsun66pqyxvr@3g4acm5bi3ga>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wuW67JaLg6N_WGlXaRHc2QIuNQp0i935
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEzMCBTYWx0ZWRfX2vOY4ay79TNV
 ivIVnaO5zP7E4sS6Rn5CG29JskMc9qOYF5UbQlsHGkn2pz7sRiARCzCeBzsZL8XBYqB9tqVlIEL
 5uGA8tivNFM+tMeySmpZrCM5+D4pDMZD4bNHNNqVY4MrKOZBGEMvO1xceiJwB1K3wI7Zqj1YdUO
 svcZf1DuAyUCGybOQAseMerA5h8XsILV9+05rSDx/N0l8xxVK5XYVdXkxyywxaIYJMQP3f2X1eR
 7yTGxgd5DjHkbX5KYqGBuhhn+vELiaPTcgSFrsL2x4MgA7XYRUCvOmWJ4ZdPfKCQFVPO/IPjKRC
 2v0hFBOkp9gCMrhyOaGCTGHxTEx1dT7o712qLGygL6R7kt8DZ6Hcmf6UWVKwIKu06zEAGU336U5
 2gVudcWUTbxL4MuNZFRNH3m75WkAMaRaqnzFCASSTdT6YxOXz2sxZQHvgT5KOwxxOBEcg3u59GB
 BvJNkqToL3u7nw1yx+Q==
X-Authority-Analysis: v=2.4 cv=DsRbOW/+ c=1 sm=1 tr=0 ts=69b2e56a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=N3r4J38z46KbWyPOPrQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: wuW67JaLg6N_WGlXaRHc2QIuNQp0i935
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120130
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-274704-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1BBF2275698
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/03/2026 12:56, Abel Vesa wrote:
>> +
>> +				dp_opp_table: opp-table {
>> +					compatible = "operating-points-v2";
>> +
>> +					opp-192000000 {
>> +						opp-hz = /bits/ 64 <192000000>;
>> +						required-opps = <&rpmhpd_opp_low_svs_d1>;
>> +					};
> 
> Drop this one, please. It shouldn't even be 192MHz, it is 19.2MHz, but
> it isn't needed.
> 
> See here:
> https://lore.kernel.org/all/taqh3ipe54cgjwcvyqnysg7dx56mweo7zld3jvmv6goq2vo4b4@ea7ksdyyn3dh/

Ack

Best regards,
Krzysztof

