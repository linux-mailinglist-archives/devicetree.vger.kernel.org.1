Return-Path: <devicetree+bounces-239399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 34546C64750
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6196A358517
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B374332EDD;
	Mon, 17 Nov 2025 13:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mvTTemdf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xq9NChBA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A03332EB0
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763386968; cv=none; b=H7OXqC0heGIIl9UdFYR5cCkUlkDiscWK9jCN9zzggDTeXkJyr8iy1CcoLZRtkL2I0xue/fmLZUvOcyFhUa6CaTly188b03FL8jG8dBgL1YdMn92tdBXxmu9856Ozn/XVSijLsGdATdfsuqga43mJLWvo9wlLU0PT/gQiC2Uiy30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763386968; c=relaxed/simple;
	bh=gy11IKgOL+UlbRpko9UqZx9q5W+Ik7+z6gmhhHDAw1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FZDCxj58IWbdjqcuSfzP6/uWlwJT8+OWiVYt96CoHCjr/1nrlFZMBLUrWKLAZESuiKvXtSKDf+c7JtFg3DSM3kRhXidLA3Q6Q6qv9o1FbJZOm3hsjetraGvssPtbVEN6tV4jqXMNWYhKYgZAVRu0DLjye9EM3odbnpUcZ5uzmAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mvTTemdf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xq9NChBA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHBbUDV2582098
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DDdOnrkpdc3gXVQILER9c4Fw3e8FGBAlyX1NwMN37io=; b=mvTTemdfoynidzOY
	y24M+IU8dkBaJi3ZhyUwKV0J9wXCzTi2wZXloiqAcbNUickK+gDzBzMMM8GPcqdL
	CxUA6KoPj8+zgpnNmd0wCJK+hVamFLrwg4fvqzN1Y0WkfVlie4Et/hLNFY9mr4QQ
	IZbEOAKN5GEzgcKbkrdDhe8/YG0zhEzfp+YN9yDlMO4UM5eRRbvFY+GMmGtiWBlL
	o2WQ0kmwJv2X5Qa5P0u56qdNaMMHyxDRGO33Np2A6gVXLCmELUUDJ/6yrxDsgnjA
	bTD23T6lilAPAAynJZJRmMa9mC5box7Q9MQ4aUsIJtNs02FJzVVy+njQk+OpO9Ud
	n/CvGA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4afssf9xmd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:42:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so46240581cf.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763386964; x=1763991764; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DDdOnrkpdc3gXVQILER9c4Fw3e8FGBAlyX1NwMN37io=;
        b=Xq9NChBAaZBVRbVGBT7Ps/kV1N4dnb82czFhSzcp4ZZay5s+RQkK4qHhatfs5RX1Yy
         H1U+JiVbFtioOJvFDxesOzE0Q2EGZxl7bkkQByvJ+2zpRaVN51R7Ia/CWtDKg5Ubmwln
         K+nmi6Spgl+i/Xc5go1pwUY/3bX7805o/EsUww/MV59AohISPgfmHZOLTaVYUfXaQP7v
         7rU4ZqxcY9WN+V3OYmtSsqCNFiHvej/7se5pNP0Z1ZHCkEy30v8IX6BCfDt+HR76M/9a
         qFSCDcmozmPFMgqRr8XITd136DneuNrXvOk0cj6AK6zg5GqH9bsKUaNvMkx+AgKpCIWB
         Shdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763386964; x=1763991764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDdOnrkpdc3gXVQILER9c4Fw3e8FGBAlyX1NwMN37io=;
        b=Kbnv+qFU6QDuGV5BR7gn5sLJTxWLPHL1GUVj9WBhYYmRskUPiMJPxTWxrkN6M3qOx1
         ebe1r7cXWy0skqyCQZF7lbiqzrI6glLnWS558a1Rl5KIeelAcv5ToIY3oSdhjwx6kN9G
         1IdtsoWyhpZ+FMsluB07VaMnP8TaHtBCM5aqbPapgy3gmQPzfl/KMMc7LqDfmscVv4B2
         GCodVpGPUnH9ZGHCJmoONUXY/0QkPKeBTr/Q9xN5o/KTgsC8GaQvYYoOJ+dDt98sc1T5
         aZW6dMbB6G92kbUbN5O0JJPNKW3YyyhyA0Yfm87Q/SFz9czU1TYxiNv2o5+lV5L4j/Wv
         L3TQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsYtdVHiIs39Aj6OXRK/MM9aTmgZV/I9Xyi/Sy7lN2YXK91fD6yYStGLk9B/aOpd7GUVpl7Bn3CUIc@vger.kernel.org
X-Gm-Message-State: AOJu0YzIw3NqYWTP6jaL13moo57eRm3GfK8IPqv7xuIa9H/4S7gqTrb8
	WX5gooJ0kOpTk0eAQBuej6enEBBYnUxZyNwuYgsDSR9U81AIxN6dljpPMabvMiFpEsPZbjjYGqO
	Yka0R8lF6tn95kJk4g11mp03KtqGsNsX29H9EUmoGuUUMC6AED/zyKTbESRsWW35kiaXsLycB
X-Gm-Gg: ASbGnctuYJEGlLFoeoWneKthyJjzv/SoN6hIFRKXxHcMMy8DF2NkQn4ONJR1CIBIclw
	+KApm2Fd5q7HdMQgkiawiVotjPcPGsTHb/0P1xiPmlv+3opVUOoryEJ6+yxyrdTA5fN5ZA1dB1C
	79d1m6YzO/6nSxqQ7uaeCqMq61fkbIBQyWe+SDcCmr1dxbNOkhopN+9TsZj4de+KWHOfdZrB6wS
	ytTj/qMZen2AO0JoZizUvUQkCe8/U75ifKYmvYg8p6BMk3obW7WPrV9bQTkpyMPFNfHYT5J5h7h
	wEE+3quD1AM3LLejA19ID1pmSs0Mbqq0oXaT9YrVmByA1tfDro4vzZnTxwgHaJRpY4w4fpUy1pe
	UKMHj+LS5IQFFet94ObPJ8t1L/DeX0eNJ5DcT
X-Received: by 2002:a05:622a:290:b0:4eb:a715:9aee with SMTP id d75a77b69052e-4ede6fa96a4mr196606271cf.4.1763386964144;
        Mon, 17 Nov 2025 05:42:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4YLKAmHqlozrjLfgMSObdu68SutHjoJpyoH3v9svlHe0C//FvOYf2CNMPyTtM5Utjid8wCw==
X-Received: by 2002:a05:622a:290:b0:4eb:a715:9aee with SMTP id d75a77b69052e-4ede6fa96a4mr196605941cf.4.1763386963698;
        Mon, 17 Nov 2025 05:42:43 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-477a7cb24dfsm15633775e9.14.2025.11.17.05.42.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 05:42:43 -0800 (PST)
Message-ID: <9ddcc6ca-724d-4c2d-8aec-ff2d0715fa88@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:42:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: soundwire: qcom: Add SoundWire v2.2.0
 compatible
To: prasad.kumpatla@oss.qualcomm.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251105-knp-audio-v2-v4-1-ae0953f02b44@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251105-knp-audio-v2-v4-1-ae0953f02b44@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vNR1iNQixXuCDwd1805FTQTGUKDfheJ0
X-Proofpoint-GUID: vNR1iNQixXuCDwd1805FTQTGUKDfheJ0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExNiBTYWx0ZWRfX+1e85+GGEG6A
 IqZS5V8NYB/G84U+kJOoDDVdlMgDYqCGhCwyKvFw2eAD5d2JQ5F3z0VTU+qH/4AHuZPcBcVm5QY
 g07EKnTbpblo91/djKHC6gfFi9fH4cpFi6AalMh06XrA2sTpnUYW53QrhPu40ukHpFe5DSf5POg
 aoNCb5bR+5BCR/9i3v4XX/s0Q+EOo9sXW0ZM+w/fwMI0UHFEDwciQF7UYPkfiuDerGotelNoD0f
 ybC31yR5O8gXeGKAnR6Fd1VFafVcy19k/3bjmxqE6gIkG0528Wd6JoepfLvGrHUBLQ7j2z2A2EG
 uGqDserO3h+7BVc0tt1I6MkBmrq6+PVnk6TsZSlVtArsimQ7z5KRhXm2WRCKwCUKKWlImt/ihD5
 7CewpuFqyWL5whmuYdF51hfEiVYZwA==
X-Authority-Analysis: v=2.4 cv=IrkTsb/g c=1 sm=1 tr=0 ts=691b2655 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=h_yHOHNfR4acK79r6yIA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170116



On 11/5/25 12:19 PM, Prasad Kumpatla via B4 Relay wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Add qcom,soundwire-v2.2.0 to the list of supported Qualcomm
> SoundWire controller versions. This version falls back to
> qcom,soundwire-v2.0.0 if not explicitly handled by the driver.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> ---
> Add audio support for Kaanapali MTP boards. Introduces supporting
> dependencies required to enable audio functionality on MTP platforms.
> These changes have been validated on Kaanapali MTP hardware.
> 
> Changes in [v4]:
> 	- Dropped merged patches.
> 	- Link to v3: https://lore.kernel.org/linux-arm-msm/20251015-knp-audio-v2-v3-0-e0e3e4167d87@oss.qualcomm.com/
> 
> Changes in [v3]:
> 	- Correct SoB chain, comments from Krzysztof.
> 	- Link to v2: https://lore.kernel.org/linux-arm-msm/20251009143644.3296208-1-prasad.kumpatla@oss.qualcomm.com/
> 
> Changes in [v2]:
> 	- Addressed compilation issue for lpass version check patch.
> 	- Sorted compatible string in machine driver.
> 	- Link to v1: https://lore.kernel.org/linux-arm-msm/20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com/
> 
> Konrad Dybcio (1):
>   ASoC: codecs: va-macro: Rework version checking
> 
> Prasad Kumpatla (4):
>   ASoC: dt-bindings: qcom,sm8250: Add kaanapali sound card
>   ASoC: qcom: sc8280xp: Add support for Kaanapali
>   dt-bindings: soundwire: qcom: Add SoundWire v2.2.0 compatible
>   ASoC: dt-bindings: qcom: Add Kaanapali LPASS macro codecs
> 
>  .../bindings/sound/qcom,lpass-rx-macro.yaml   |  1 +
>  .../bindings/sound/qcom,lpass-tx-macro.yaml   |  1 +
>  .../bindings/sound/qcom,lpass-va-macro.yaml   |  1 +
>  .../bindings/sound/qcom,lpass-wsa-macro.yaml  |  1 +
>  .../bindings/sound/qcom,sm8250.yaml           |  1 +
>  .../bindings/soundwire/qcom,soundwire.yaml    |  1 +
>  sound/soc/codecs/lpass-va-macro.c             | 90 +++++++++++++------
>  sound/soc/qcom/sc8280xp.c                     |  1 +
>  8 files changed, 70 insertions(+), 27 deletions(-)
> 
> --
> 2.34.1
> ---
>  Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> index 95d947fda6a7..1c4b0bdbb044 100644
> --- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> +++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
> @@ -26,6 +26,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,soundwire-v2.1.0
> +              - qcom,soundwire-v2.2.0
>            - const: qcom,soundwire-v2.0.0
>  
>    reg:

LGTM,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

--srini>
> ---
> base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
> change-id: 20251014-knp-audio-v2-9a37752cdc15
> 
> Best regards,


