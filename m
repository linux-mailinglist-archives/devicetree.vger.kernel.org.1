Return-Path: <devicetree+bounces-261388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH81KnapfWlZTAIAu9opvQ
	(envelope-from <devicetree+bounces-261388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:04:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0768FC1090
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84B36300CE75
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 07:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEEED2ECD37;
	Sat, 31 Jan 2026 07:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nlv2/EzK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jqjHcfwg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975DB26A1CF
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769843059; cv=none; b=rzFDHpWkrQhiAC895eeIzJfH7i7AWm3jo0AKHVbF4xpQyu8c59AF5OvjPp1AacceaIiODraAb0BxfwlT7G+mErI3uCGXZXL+3zliOLVNRFFsMMjNf8OWBcU7Jug5kjt2lU4Ki32hKLjah4yWv+oElmvtA0K7L3xQnkWD2jeSmZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769843059; c=relaxed/simple;
	bh=rgy/at3kmkxTMDbM/vQgHjYi2/wynlwaxfjJiFuWc74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cVYZIHlZ//umZgav8vX9Vg0SDl54d/c8QP0N2qWsS7+/SffT/AYuU08TBRkkCGv4Yy+Y5YgkjI3/v5NPxtNIvZ1ZRd6fLd8QEVyB+7q8u2v2nTF4UWI5RKiWIvyevDRdRLahM59XsQHkww9HSW7Ge+eHZmCN9Gnod8eWF1vBzd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nlv2/EzK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jqjHcfwg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4YfP0658342
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:04:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TwPujOkOipA9lQGDQu+NSYOFeo6UovKgj+ZFKa/Qbxo=; b=nlv2/EzKY7isBH0k
	YKsiGB+2q6411ayjORt54jVlaJwUijxVaTYJTG8ZsHwJPRsMHsCQ3q4s2UfFJqdF
	80HlkGEzFa/5Z5WDhLExoEo3etF12WYYuIeUkqG1g27bKHyjOTv0FMir1VgzdgzE
	81drvuYAVr3nTPWSx8NDTPPN+QYp6aJm3GkEm0ggE3F+DgcTX/c15YKvUT1Hm7nF
	8axdtmlnK/ErkHluntPQVy4L3SIQ7PRyxGg4Wc2lPZtMC9HXWXo5M7zCUVm1K1l1
	91HXgzsrcPb4APeObFzjNSHmBuq8Eq8kmTZtoNkaoC7+ndLPWfZVoH0vwj0ADD7/
	WwxQKQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1au2ga24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:04:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c882774f0dso538527185a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 23:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769843057; x=1770447857; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TwPujOkOipA9lQGDQu+NSYOFeo6UovKgj+ZFKa/Qbxo=;
        b=jqjHcfwgAbSF+f/Dk7Bqm6sTzWABg+vkWVIUC04XwDIm6NzVOa2JrrXDuMO2Y1RQgl
         zApnf09Jt2iNimv8sHEYFsrjDdMeWjyRYUYAsoDTbs8XDQpa7o86oWzfqlbZPZ7+uj+8
         zOUeNVePT7XWKTUWc7ca3LWZDAivqhHJ5+dPIjcwKKk5iJ0Af0qxwSAFYqAV5KEW7fje
         fisQDAX/2oeG3s8mGw1moW6Aytl9uRyELA/hTSeh96dpQ1MnmgiHt9inhCaCZ1cW5yB0
         Wrf6TmVD8QvlPEcsjIElAd+0K4PUvL/JjhGLD8TXBuAWnh6P+XJ3ssSDfC71SIz0ShU9
         HmmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769843057; x=1770447857;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TwPujOkOipA9lQGDQu+NSYOFeo6UovKgj+ZFKa/Qbxo=;
        b=acMhh+L7slea96MKSU9Q4ft6+zotELJZBSNN/WVKj+/9BqNc0uSY11RCTPcuwmHnd2
         rJgnYrjg81g2hiDqSC4sXOsXJX/ErudOE3yGklllkm4C+0asoj4COZVD887F8115uLiv
         A27J5oUBWHsOF6aZp19eQuxWpO+t8n/X3Iuv8hSrDrpymRReV3qi1Oqx94F6/XX9ztvQ
         Cj8D7Jn3KIjj/RI/eFH9dBk+V7p6FEr8U9zdb0jY/dbanTan5Q86yYvZPTAhc84lzWXI
         KxyAxR6WZy/7AyBC04EU0IxG8eX68ZQe1fhYKwvNFQwc6Nfk/EQa4QjPjs+KA3MUdr98
         y1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJYs00JVp9A3RcplBDRteKGatI9c0lgoMstVqDIQJE7a3RSAZpmh1nyjE3yOsx854196ZC9wVSBBz2@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf+0qZA+BIy90pFMk/sFCb+uW1NRPwIiPKH/Wit18z8e4O6O2b
	MOCm27TmUcYvCsMpk5AWN6b7YgDtX5aHoKl+C/zSBVh6MXjvsaqEXTMrqotX4ObL0vvR+iPT/9H
	Y4vX+tNQcdAxVNNr4EFe7UgGFzb1zpQ71pbeKiD0we0Gz6HzoyYLH+HPGRUz8mk/Y
X-Gm-Gg: AZuq6aIaAXofWpHlGsSe3qwVXkTOZcKy+rE1Ql6thaZQxz4XrnBkRsOtfzJ3kPmOrBk
	956QyjzSZIyXpnnbjH9z60r8732D1iQ3whklyBbfzPRETmz+7OHnJxpSYeTOsWimJu08H2T/2P/
	0AJZHjYiJosBXn6szA9YMfWW5/9XoK+UhaIWHthcg6iv695uSgFrBe42n84xcBbChE2JczXJKJY
	SiabKIKmtBO04FOMQTc6NS1oShNxoDTSa7v/WoQUkmYZA18GuW51luO4CzLIcJHIogRU5X3mxzX
	QRPsWH2CtsefIJG0a17zBrot+ntHjX8wcokCp1B7B9Em7JTEaVfahfi4mOd5OKHEthoPoNZ8z7m
	l5uxXadUcVtTqXsL/dgABrlVlK6jlJkJTOPauy57U0eM19OWqpdtwDNYWFWydnhnZzg5INDHIws
	+1inxr9k1k86QSW4ZocCoSPrA=
X-Received: by 2002:a05:620a:1a20:b0:85e:b7b6:81e2 with SMTP id af79cd13be357-8c9eb320ef1mr666313985a.50.1769843056897;
        Fri, 30 Jan 2026 23:04:16 -0800 (PST)
X-Received: by 2002:a05:620a:1a20:b0:85e:b7b6:81e2 with SMTP id af79cd13be357-8c9eb320ef1mr666310885a.50.1769843056404;
        Fri, 30 Jan 2026 23:04:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625c44c32sm18445571fa.1.2026.01.30.23.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 23:04:14 -0800 (PST)
Date: Sat, 31 Jan 2026 09:04:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 2/7] media: iris: introduce SM8350 and SC8280XP support
Message-ID: <qmnovgzw6wqmeyt44q6rrhj5zwovnwv2q6q5tpuw6k3oj7e3mq@c6tvf2yaodhg>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-2-d21861a9ea33@oss.qualcomm.com>
 <b9fb16db-8a16-420c-bb55-850c39301f1d@oss.qualcomm.com>
 <kffcydlqdhkm5q7lip522isb7toa4jtmnzjvmctpsv5pc2ozat@o2laeofbthwc>
 <1204a2a4-18bb-f43b-6974-a19d238ff74b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1204a2a4-18bb-f43b-6974-a19d238ff74b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: -4r0cR8Kn3M5OiGPXIVO77Q4sMy2XVzt
X-Authority-Analysis: v=2.4 cv=TtfrRTXh c=1 sm=1 tr=0 ts=697da972 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=K2yHhd6zA90lxbh546EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: -4r0cR8Kn3M5OiGPXIVO77Q4sMy2XVzt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDA1NyBTYWx0ZWRfXwNUPC8j402yn
 Qp8TSqSgJHuejijk3h6EuRiCBBTkqQ9BEkkjFTQJjJ3Q15YcWi+Nyly92QtWEet5Y4r15wPJZd+
 Z1jPR8ebuaVAE9wpKTdGSfqzSX+Xt9kKdnOsGtzq7h80cn3s74AqwybzbjKWzdd/8X91Z80zSK6
 qB5fRNwqPLHIT/nYB3xaafle02sKKV7vCWNUdV3PAQM58G9ZqfcPnlEiti6XGUitgj92QKBQYcC
 HeGGxACZvE6jIHJK0WomMXA6Td0beJysqI6LCRz0LAMiJI/WdUqUlAFkFRsE+DRtuaA8oASXpaS
 QpinMkL7xXKZ0rEqZMm04SJB9c7/bJH2ztGiBlKgLST5A8yp1Dr/Exs2lgOKYjBlIvwZbbuxjPQ
 zQuoW3GnkkSIdKo4MEjzoUtZQh1sY1eg6I+73ti+8qs+IUVYsbJElbjPS7Cn3j6ODgnFaOmJXZi
 Arip873xWvjw8R2gbPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261388-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0768FC1090
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 06:50:35PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 1/26/2026 4:25 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 26, 2026 at 10:50:56AM +0100, Konrad Dybcio wrote:
> >> On 1/25/26 4:32 PM, Dmitry Baryshkov wrote:
> >>> SM8350 and SC8280XP have an updated version of the Iris2 core also
> >>> present on the SM8250 and SC7280 platforms. Add necessary platform data
> >>> to utilize the core on those two platforms.
> >>>
> >>> The iris_platform_gen1.c is now compiled unconditionally, even if Venus
> >>> driver is enabled, but SM8250 and SC7280 are still disabled in
> >>> iris_dt_match.
> >>>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +static void iris_set_sm8350_preset_registers(struct iris_core *core)
> >>> +{
> >>> +	u32 val;
> >>> +
> >>> +	val = readl(core->reg_base + 0xb0088);
> >>> +	val &= ~0x11;
> >>> +	writel(val, core->reg_base + 0xb0088);
> >>
> >> Can we "open-source" what this write does?
> > 
> > I'd leave this question to Vikash. Hopefully he can comment if I can
> > open these bits or not.
> 
> This register controls the clock halt states for several IRIS sub‑cores.
> A bit value of 1 halts the clock, and 0 enables it.
> During power‑on, we clear bits 0 and 4 to unhalt/enable the corresponding
> core clocks.

I think, Konrad's question was if we can add a #define for the register
name and maybe fore the mask bits. If we can, I can make it a part of
the patchset (I don't think there should be an issue with the register
name).

-- 
With best wishes
Dmitry

