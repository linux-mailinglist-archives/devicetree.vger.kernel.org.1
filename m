Return-Path: <devicetree+bounces-275601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JvgwJSHCtGnIsgAAu9opvQ
	(envelope-from <devicetree+bounces-275601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:04:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AA128B557
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5328E307964F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B276B223DD6;
	Sat, 14 Mar 2026 02:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xmq4hWPq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GragRhmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FDF4315A
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773453854; cv=none; b=GiK9fNQsBqKQiSqvXaDf437cekXNBkTPCa6lO2SZK1IOE3r794WCC2jUPw2v5FFGAOj9nvcZoFL1o2yVPKZlVU+rSFzw5E4UhaMl12m+iwRFX2lp3aYocaAsMS4733WaUjQJrPvxS9j1XNPRYHRDIhpGHd9WenzfUdx3RS76/uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773453854; c=relaxed/simple;
	bh=v07UeZpVrn9I5d1gYqiADj5S1ce/W3XOqFyrXuaZI+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FrL+1XEWAmxnBl8djmSkolwfNnHzlXjgOswgfOCmQXhAs59sLkwLiQxQ4w2RmSAArI7fm0knQGfisYol0po7XZkk3Li0yEOkEuySpvKxiuHfI7gTm/p7wrbtYwDQPi9cR8q6d77grAcCJRdMPrG4r3Vdm7fI+iVx6Kvup5EJRzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xmq4hWPq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GragRhmJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DI06Rv1749420
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:04:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/FLx1q2L+/2u2ZwvCEUn93j2
	CO1oCs48gYn4y0ww5gw=; b=Xmq4hWPq7yeBWvyahTveSY+opksK0FpcQWbXX+dd
	XLPIDsikbNqC9atX60Y1a9R8SKJF1zlNMPL02HZuoPhir8Hcv9DzBBuPcfWrmVau
	cCDtGhmmE9h9soyerbL1lZSd5O3O94bC0IRVBG6DPUpz02GvR/mQrYQuGUyA+ctq
	AfpsAKNKtDD14tLHsgQ1A2eHp0Z40S4RH/7bKOKCY2dRFTi4mAZJwyBuNSlJDmod
	YMGaF/ozKR5A49DbE0CtEu0xBuu+a+RjE7DbTKrEIk25pIh5EBq7x/AKJAC5y097
	pcHuyDMyuVycyq+JRYWyHUnddLBMbmF9GkxKPQwoMRMxqQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6jpqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:04:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cdb995a1bfso1002387985a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773453851; x=1774058651; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/FLx1q2L+/2u2ZwvCEUn93j2CO1oCs48gYn4y0ww5gw=;
        b=GragRhmJ/FVZkeIfj/rKgjuyKAELy3AJ9oxWVMVZE7pq2+o148yfASR9yaiVTSXu7O
         I2S4T7lxwjtYD7ERonq1OjBv2sm2+Wta//c7zny51mV4OxwDvTS5e0v0UrO/AAPdLnps
         HonKw0vDMIt87elFO6f3C+P5qSuka/mffOUfQKRC94K1TKJcf+xcqTHPP9F9gXCxYKw9
         nrnkayHQG5lh0jVQgRW8okqQiV1js1Wgy1jWmzuCpT1zb5lZEYsbjuf3AiHE8UD9+oNY
         yucPLBYAsPrFDkam047ZDZjbNQ5Jjl9oa3DOGQ2SHJJIIFMir9PPS/2UA3fUuMmXFLSs
         kYNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773453851; x=1774058651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/FLx1q2L+/2u2ZwvCEUn93j2CO1oCs48gYn4y0ww5gw=;
        b=gchcid2Zxsy+TZ8t9axADxYn4EqcLU6RuhtuBwxZ/8rIVW4FGFnE2ROlkmgB81PZ++
         rFnqGdH+J4ksCOHaM5OFFkG8KLiFkLVXbrWF084HEhyfEcPpnXVIpwg4NJ6i2vFWND9Y
         xQcQU/NvSxmuvWHjazb0JXKkxWj+OpkUJXNqoU6WghWl2s9WAGmeZ9z7pINZ1f3sSg1B
         P7/kaSGFeJjtvCfEMs3gVlCQhGm/Mf+QYh5mroYoT1ep+Sf9d22hsU1vS3JZ2G0y5pHL
         hTyGOGO4DlaLtMws6zbvH4D6+YvopuSqvOHRLLqHTRsYbVAenTHLj4ulrAFipJ92dE2+
         ZbKA==
X-Forwarded-Encrypted: i=1; AJvYcCUU4UT6w0nT836KyBVo+bvrCQnbon/9XBVpeF6UmJoQlMTkDKuAlSNfzEZufdVRN9GFcvieuIG8Bw9H@vger.kernel.org
X-Gm-Message-State: AOJu0YwcU0CLnazjEza/v8BQtiXFUypSz9irpSOwiMGhTSRMwotIT9sz
	riyQQlEi2FA68Alak6J8zb5eUcA/pJvmj01M2ibmKg0DfQHhxDYurWzBB7yiUl2ultMHZdCnxyb
	cy0yD9qWfbMn4sX6sM+3BstesLZjxgWxD+IgbCluymLzLNCK+5ZYs4+WZ+x9fuGCa
X-Gm-Gg: ATEYQzwuu/wgDfA7/HQyOM05OZH9B0BxQMMIZ5Zc9pum1oteQHR0pvvXRS3TkmhWH5l
	rki31rEUydFFCJvDhA/LInbOnUFSYc47g4EfHrTnAjZAEM7jmQ6AjMyEiCdH2tHg2617wYpZl0/
	A5xJFEQ5QXZnqpXiGi+D+PV4k0nYxPrHPsTGsuIYc6TuwuftVvj4FbN1T0LTK6nB/i9tniubhmW
	HGGzGgmp4A5lrmTfpwvnPzXOzQeA/MNR0TUQduO1bauWhwBlKjGZzlvtX9YCncvtAsx4bJVx5yB
	+LnkUY/m3AwcJM4wQZdglKP+U/1JN8yi3z+i9lzF8zYiam73w5uH06V8hnvbkdB/J6l5puRuZ7+
	8KMyJg1B2lhEY2wYzyfkavUwGHFDowYegrCfwH1apR948FMI8VbYzSp+IXrCWRcOpu7YwHCRJ6u
	GBuFkjIw0ItUmO2E+DMe8f9Ukf0x2QSK+qS+Y=
X-Received: by 2002:a05:620a:471f:b0:8c9:fb65:7f0d with SMTP id af79cd13be357-8cdb5a70377mr802814485a.28.1773453850824;
        Fri, 13 Mar 2026 19:04:10 -0700 (PDT)
X-Received: by 2002:a05:620a:471f:b0:8c9:fb65:7f0d with SMTP id af79cd13be357-8cdb5a70377mr802811285a.28.1773453850307;
        Fri, 13 Mar 2026 19:04:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156366b22sm1827925e87.77.2026.03.13.19.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:04:09 -0700 (PDT)
Date: Sat, 14 Mar 2026 04:04:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hermes.wu@ite.com.tw
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw,
        Kenneth.Hung@ite.com.tw, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Message-ID: <p34ct3d2eftpdlfmf7yjmyuw7f67tu6tvyerilagqrjtnwegs7@wjiorhtxvvx5>
References: <20260313-upstream-6162-v3-0-8497fb7c4406@ite.com.tw>
 <20260313-upstream-6162-v3-1-8497fb7c4406@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-upstream-6162-v3-1-8497fb7c4406@ite.com.tw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAxMyBTYWx0ZWRfX3O3nl2FeOIt4
 /E+8khhGk0XsXPdenXqR5gyVNQiST2yXi6DSq9V/OzOazQSMDs3lqoorOEjg/W9HGXdMxbUwJ8u
 1/AjJm7aLHP41ZDeFVXfR9Gg8qJToVU/SNpEGx1w7ILbohnKOaplz4CqA1RuRqu9o5EdeHAMR71
 7rA9plTbpEz6RJ1msofUXU3Ze4Rf3/NKSRaRtsqEYcVGCotU9xUIt4V93+5fINWhRJBYwlPn0q1
 dqdmQ0VIRpllZ/9JVilWI3B1yJ8WYY1DzyrqH92/jP24kjm3cImpfnysvlMlzCV+KH284tUeZGN
 UpFe1eUKhvsabPmCaLPuHzImLnv9MPiiJm3e13ZedBpL/hJtLAl7Ku7vZfavuJLei9qreWyNtek
 OvyaSbvnnMYkfH2TM+cqLtncY14raFAfG3fK+VlzpE4XVOCnlqvytI2tqt+XOs1MYFFKcQ11Ww+
 cLyw+exaUz/UPI9ajoQ==
X-Proofpoint-GUID: YCY3SyK-3dTuF4aS4-qBrcavMaGHquUw
X-Proofpoint-ORIG-GUID: YCY3SyK-3dTuF4aS4-qBrcavMaGHquUw
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b4c21c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=gEfo2CItAAAA:8
 a=Ns9eNvu6AAAA:8 a=qLnrkvngGj7QPv7EIKMA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=sptkURWiP4Gy88Gu7hUp:22 a=LZLx1i01EnjtqRv10NxV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_05,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140013
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-275601-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E1AA128B557
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:16:00PM +0800, Hermes Wu via B4 Relay wrote:
> From: Hermes Wu <Hermes.wu@ite.com.tw>
> 
> Add device tree binding documentation for the ITE IT6162 MIPI DSI to
> HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that
> supports the following configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The chip also supports up to 8-channel audio output via 4 I2S data
> channels.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
> Changes in v3:
>   - Fix lane-polarities: remove $ref redefinition, allow via video-interfaces.yaml
>   - Improve ite,support-hdcp description to clarify FW-based HDCP behavior
>   - Remove descriptions repeating schema constraints
>   - Remove stray comment in ports required section
>   - Fix data-lanes spacing in example: <1 2 3 4>
>   - Add missing newline at end of file
>   - Add missing change log that Reviewed-by tag was drop in V2.
> 
> Changes in V2:
>   - Drop Reviewed-by tag due to DT bindings changed.
>   - Add property "ite,spport-hdcp" to enable HDCP
>   - Add property "lane-polarities" and "clock-noncontinuous" for DSI
>     setting
> ---
>  .../bindings/display/bridge/ite,it6162.yaml        | 178 +++++++++++++++++++++
>  1 file changed, 178 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..b33fd140a9932cff3ede342298488988d337477f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> @@ -0,0 +1,178 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ite,it6162.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ITE IT6162 MIPI DSI to HDMI 2.0 Bridge
> +
> +maintainers:
> +  - Hermes Wu <Hermes.Wu@ite.com.tw>
> +
> +description: |
> +  The ITE IT6162 is a high-performance, low-power HDMI bridge that converts
> +  2 MIPI DSI signals to 1 HDMI 2.0 output. It supports dual MIPI D-PHY 2.0
> +  links up to 10 Gbps each (20 Gbps total), compatible with DSI-2 v2.0.
> +
> +  The HDMI transmitter supports resolutions up to 4Kx2K@60Hz and is compliant
> +  with HDMI 2.0 specifications.
> +
> +  For audio, it supports up to 8-channel LPCM via I2S (multi-line or TDM mode),
> +  with optional S/PDIF or DSD (for SACD). Audio sampling rates up to 192 kHz
> +  are supported.

> +
> +            ite,support-hdcp;

Can it be detected / read from HW?

> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;

Emty lines before subnodes.

> +                    it6162_dsi0: endpoint {
> +                        data-lanes = <1 2 3 4>;

Thies doesn't quite make sense on the sink side. Should it be set
instead on the source (DSI host) side? At least there it would make more
sense, especially if the host allows lane remapping.

> +                        remote-endpoint = <&dsi_0_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    it6162_dsi1: endpoint {
> +                        data-lanes = <1 2 3 4>;
> +                        remote-endpoint = <&dsi_1_out>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +                    it6162_audio_in: endpoint {
> +                        remote-endpoint = <&i2s0_out>;
> +                    };
> +                };
> +
> +                port@3 {
> +                    reg = <3>;
> +                    it6162_hdmi_out: endpoint {
> +                        remote-endpoint = <&hdmi_connector_in>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry

