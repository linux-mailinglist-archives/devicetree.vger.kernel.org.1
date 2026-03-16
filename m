Return-Path: <devicetree+bounces-276405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKo4GbN3uGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:35:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA552A104C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B0C63034550
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B56366058;
	Mon, 16 Mar 2026 21:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lj6Vi201";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dUsZ5/nh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE5C364E9F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773696704; cv=none; b=YutEGzboEvtykbmGsvRck21NejsecacNUcyUj1xG6UWpMU4rrQPg0aiYxmYmRlB00RusNf4yDVp/VASbjrRWyX5uKMASQpuJspbOQDtsm4kxW+mwiZaRCz5HT3TgC1GZBMr2/SSDZbYzDhOas4tCWnn2cH9ULtiWhZTI4H9Ps8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773696704; c=relaxed/simple;
	bh=IjdfbpR/GItXgOAV5vD1YoDI1bdHdY8JCyUTHWozK0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dP3iKvIH27QQsDH0ggeiAxDNBD+Pv1xLjmxyi8h/bywC+MyrVF0+JnhNuOnsOvSf7QTKKmJf0gLMehXvEf9w21Iip+DnPAI7DSZoNw2rU8l03UjIXHjMApve5PSuRj3W/3Cv7JGkwCDlCOkTORMNZpSnKk4NbqwDxkBPZablNHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lj6Vi201; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dUsZ5/nh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GEgGiQ3295924
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:31:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	84M66G2PwCIzVdx//9IgiXr4vtMOe8kaOEGL8EAmpMs=; b=Lj6Vi201pnCKOst3
	zmxGLVXvQypnr/F0TuAuo2fO/PHOzPv94HYyUBgFkbAoyvG9mObHExmVpD0TgMkT
	t2Yi7yasZLj3x5as70v3MYRWX5QqyCN8FrcSK3h6BEzpLiac4VDTWSivAwOiVFWV
	FlukTOkhJqFNpwsvNzBUDV0IPshHY6RjFrMkz0iEFN5bUic6kxU7Vc5K5gXEm6dW
	sQ7X7cMshIZBGwSr13eTBTdc/ibV6y0CeYrvWDkNwR28ot4HWsX0UN5Vfi+JvVvh
	3MmJfOshQl9tvb+muQ3R1Gal9dQN7f7fm/1TYlzS9X7o+EtDJ3tY4WIhLs3GgTf5
	tAXJPw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkuy1a8c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:31:42 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bea1ffd05bso4790247eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773696701; x=1774301501; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=84M66G2PwCIzVdx//9IgiXr4vtMOe8kaOEGL8EAmpMs=;
        b=dUsZ5/nhllC4ZKVYqqheWSMJQ6xO5jx2vsaj7CNelaUU5lJvrwuk2dUBEiRHPu2rtP
         +QrnkmZNkV11Gaj1F02XX9qyTpcLk12AatDwL8dIuXRWLtD+1a19Jo8Ft2YclzpLDmZA
         +qFWf4sLyVcIDrwT4DR40z7hVo16u9vw/V6inQaHF2x5OJbFXnjAZsoDO/EIIiLgsPdf
         aUJXX/+XzBcaJP7b63vB6B2quQh/Nb7pVlH0yI0eljPWpn8txF3/X9w+594hpQRoGkMz
         EV5BRGlLEXbwrVmy0DijmS5XpM0/a1UOWIz9Td5SxQtujVRzsRsAXyL70ERpte2JFPDZ
         wddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773696701; x=1774301501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84M66G2PwCIzVdx//9IgiXr4vtMOe8kaOEGL8EAmpMs=;
        b=rnatq+ky8XQ1TPC5+EKRh+LbtbX04Yscy6bHZP98c9SX8lYo8RsZYiOOt9XeCU9ODg
         PxwD7TjpMS4aH6jqX0RDpnKqceMK+yReF0ZoaA2z7J8YjLwrqTLl/OekkXjB2E++XqkH
         nL1OT0Fuhjv/OFUGpV6fZW3BWldvwx4kwVN5fFZJLRm5blKKH9QxktSIayGD9Rbo2W6t
         nyq4Tic5iramoTlbF8Yi9wkTqU/fG6cmsOSf0CcioSYu5ZrKo8An7xmCXJA4SYCV8sZu
         E5QDnBlldMP7kI62+ASGG5aG4ICdae8tgHIlNvTlgCu6x+he5qtGccRCvx1eGpOMx2iO
         ZNHw==
X-Forwarded-Encrypted: i=1; AJvYcCUvuyYu8PyckTP86hsP1uctQU/zpFHH/YGk2W6PO8YotdC8FlES8+/RdOYPZLCGTcdr4DGJelsuZqqu@vger.kernel.org
X-Gm-Message-State: AOJu0YwWCksGph+3pI+a3hnpk3pUMaspLlaG9UdW4jPqbM7VPqN/xYMp
	cFm2Bf0BAzvylawE/4UjgO1LnKQ6VquHmK35uTMoxUUG70on75ZpY3jHYB6uE3+ZFmOBGFEtmJP
	/tu2DUdN0IXfSMb3oBub9ubjfMybIB6RyCNO/mL9KDFpmKLi9Lin26BGXQ2jSBgof
X-Gm-Gg: ATEYQzwRzahXZ4pORp8gaVezS+ciRzcRqXxcL0FLUhl9otdZenkNwLXkP+tQ0gyUt5N
	+6IyLtg/JbtUh6i4PAtTPhf1iVjy3TV5Q/Hxqi2TdN2UVLDVmRE1vw5AD6IVGCBcYrrwZuBxGP3
	MzRqI41QBCts+u2tHSAa929nY1fajPsRYP8ratSXZEjsRXqujLrZd1u0LfjQ4jeXDBEvabaqdVN
	ow8doupzcvQxMW2DUFYzZ2DQyEfgYTUoEhifCDgVOxsC2HcS5YqwygeAjgWNUqLm5xmaVrwTd1Z
	QjJ2qntE4y2tYOY8EAnCO2NfPe465u4rhZyH48zaB341ZvHbVaY/X3GsLw8GBZUqvfH6/0celKI
	jLQlrQIl/WQ21Jzb8i4KevMWh2hhkyqHQjeYEDoKT+GVS/fleeApejrwUpAlnK4Renjnibn3h7s
	tkuQ==
X-Received: by 2002:a05:7022:6299:b0:119:e569:f615 with SMTP id a92af1059eb24-128f3d35f47mr7010891c88.14.1773696700808;
        Mon, 16 Mar 2026 14:31:40 -0700 (PDT)
X-Received: by 2002:a05:7022:6299:b0:119:e569:f615 with SMTP id a92af1059eb24-128f3d35f47mr7010861c88.14.1773696699781;
        Mon, 16 Mar 2026 14:31:39 -0700 (PDT)
Received: from [10.62.37.228] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f62991c7sm13756734c88.5.2026.03.16.14.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 14:31:39 -0700 (PDT)
Message-ID: <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 14:31:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=br1BxUai c=1 sm=1 tr=0 ts=69b876be cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=FiKLMzvizoLJB3YtxsEA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE3MyBTYWx0ZWRfX/EDa6bXDDrLy
 rKPs3B2I5kB4rzm6mun4gTKGsbiZuX7+iO/zb7SMN9ODbV8I5D+oj6KtU5e9ObzEBUe+SSkLrrE
 h5zdQkGz+CQ1Y2Xehtyp6X0F+COpcpsXPBrB6fts1wXekibY1lIib52aCEFmd3Zc+LfkgKKjt/V
 YSvHtTgZizNEk5As9CzU04PTiBCK32Qb1xbYIEBubo3mygaaORmmjQEZwwi/lvkmGuE4ULiWbgu
 JBzJI2hRH0oQdbEBC4TWYLSeQZ3xcxascnLkuuDjwTIo0cI5HAmI075Y80VN2uF/UURfMTiQhBt
 ITaZEXbFMpj/bPjsup2TUhTB7QD1ZkrHIJjbS9MwLjpW5dIi1HyOLCRZE+sWhoP+0OCknto+Rru
 uZ9/+tAzNJ5bS8oIddGxsyRFlLMxKzPrXKsDvXN6pZddGrqjmVppJ0c86SJ/zLX4H87S1Jd3o8p
 mdqNFZBe2kLVxmUTZrw==
X-Proofpoint-ORIG-GUID: bf5782n8d_4kYcnoczbXvfLizp836Xxp
X-Proofpoint-GUID: bf5782n8d_4kYcnoczbXvfLizp836Xxp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_05,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160173
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276405-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BEA552A104C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Bryan,

On 3/15/2026 4:52 PM, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
>   1 file changed, 133 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..b83c2d65ebc6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,133 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI2 PHY
> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-csi2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: csiphy
> +      - const: csiphy_timer
> +      - const: camnoc_axi
> +      - const: cpas_ahb
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  operating-points-v2:
> +    maxItems: 1
> +
> +  power-domains:
> +    items:
> +      - description: TITAN TOP GDSC
> +      - description: MXC or MXA voltage rail
Would it be better to provision MXA or MXC as an additional optional 
power domain? I see 'cam_cc_cphy_rx_clk_src', the parent of all CSIPHYx 
clocks, need all three power domains on this chipset.
> +      - description: MMCX voltage rail
> +
> +  power-domain-names:
> +    items:
> +      - const: top
> +      - const: mx
> +      - const: mmcx
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - operating-points-v2
> +  - power-domains
> +  - power-domain-names
> +  - vdda-0p8-supply
> +  - vdda-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    csiphy@ace4000 {
> +        compatible = "qcom,x1e80100-csi2-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <1>;
> +
> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                 <&camcc CAM_CC_CPAS_AHB_CLK>;
> +        clock-names = "csiphy",
> +                      "csiphy_timer",
> +                      "camnoc_axi",
> +                      "cpas_ahb";
Although it's not a concern from my side, just want to be explicitly 
sure that everyone is happy with the clock names, just to avoid any 
changes later on when other modules are separated out.
> +
> +        operating-points-v2 = <&csiphy_opp_table>;
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +                        <&rpmhpd RPMHPD_MX>,
> +                        <&rpmhpd RPMHPD_MMCX>;
> +        power-domain-names = "top",
> +                             "mx",
> +                             "mmcx";
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +    };
> +
> +    csiphy_opp_table: opp-table {
> +        compatible = "operating-points-v2";
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            required-opps = <&rpmhpd_opp_low_svs_d1>,
> +                            <&rpmhpd_opp_low_svs_d1>;
> +        };
> +
> +        opp-400000000 {
> +            opp-hz = /bits/ 64 <400000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-480000000 {
> +            opp-hz = /bits/ 64 <480000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs>;
480mhz should be svs?
> +        };
> +    };
> 
Thanks,
Vijay.

