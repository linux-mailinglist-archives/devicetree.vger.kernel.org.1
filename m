Return-Path: <devicetree+bounces-259816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNiJODeSeGmirAEAu9opvQ
	(envelope-from <devicetree+bounces-259816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:23:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CE592BAD
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02308301A52F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A0C337BAA;
	Tue, 27 Jan 2026 10:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EhCfTHkS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LGsw9WQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9987C2FF664
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769509124; cv=none; b=cnU7g5djPKvMrhEG85C/FoiQOqWEiNIsa7f2CsRl0w+tFEjLTml/r0pg9377eYf93TcCPdfGhgF78inJI0RgKOdRhb0RoWckc19nuyCgP8LjPqHLaR7IcnJHAuPXOB58t5GgZB99z3agqOtR06Jwrc5imCuvqlPhmlgbYN6csmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769509124; c=relaxed/simple;
	bh=hd5UhBtpWtVXfDPlxYPP+DhG58t6scZouIFH3XBtJAg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XA18K5FJKPD7ZOPNhimgyt7IZXVZUz02zLt5xaWEZjndSjYjreAIDSMAesPKYsdnSGT4ppMLj2C0NgdCP6mwd1+fYISNvSO0Tsl9WEWIIesmGElZagEYJEnqoCBke8x+2lqCaJUr6JABJpZMBiGotsunPzN3vHZZrzLNO5b5i34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EhCfTHkS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LGsw9WQW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4UJOf700199
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:18:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5eLg8lvRXM1ve1El07YMeIhnVb/G8HJbWmSDSOLjgNQ=; b=EhCfTHkSCCqEqT8v
	sxtTfUo+UdFqN/R/lNeTo8eqz2G38XLCerWbKQ7ON7NIdO5Cnwj8aAXD07eUQPGG
	veO8iSgaJnEjkBro1hmTg7akNiFXYaQvy1hqsFgCa8Am+tETWL7SuDqwSena/8c4
	JaiMiMs95qSO2RJstGb5r5tgwfLerdR+iRE0bR/cYzB5yoSfKQ+8W8R/WnIHfqNe
	T1+Wvj9oqNZMdiKLX8fPCjk8zcMAZBBmdUqD/g9UbzIUpu+4KmPgfIY/FhQ8p4aZ
	BRW0QJRCyQOga9Y/tm6CjOv4IyAHfO9o373CAf4ATWc7kHtWVUCrgKk4mmHEzmpl
	klcG2g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxew3tc8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:18:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70cff1da5so66051285a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769509121; x=1770113921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5eLg8lvRXM1ve1El07YMeIhnVb/G8HJbWmSDSOLjgNQ=;
        b=LGsw9WQWbqAXeJS1FAvknX5FI6PnNGWaiIHMBdoEYMsLXX+HTFU4UCblYSUMK0x8Ky
         6rURauI3oMpmn5R1OcVQjybDI97xty3ID3Dw7CNorBC+pUunqtUFngCiWqfNFYJ7S80c
         oa8LLlQGd2YUziEXILkM0IKBnB00FNQj3qw2vxOxJNcuKRAaTX3UwkCV5cdIf5WzMi+V
         DxcLOOOfIWvxbGA4Y+ccKVvfIRvsWt7rOJUA+Pm+h8BOnBICE5adCN/I+7G8SnR4KD7U
         XgpeGOQ8K0J4JJ9CjhgulL+kOSep1MPqJDBDtF7e17aiT1skopuKw7ZEfn5Kcwv2QfuW
         E3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769509121; x=1770113921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5eLg8lvRXM1ve1El07YMeIhnVb/G8HJbWmSDSOLjgNQ=;
        b=drmOln5y+DFBs+jGGtGD47aYAh0+0u9Wff4SLqOl2a+gP2f/eBhECu3lJeHlkTd4SU
         eiyQi+m+CGiokXiF5KkfWl2nTvCKkKqw8UVyoGmvuC8CLa2P5mVxcEO8iojHU/+39S2M
         h8s6lXHsJPBekoiyxskx1V95hyXetOyQli9a4bDadblJVDCkPo3uCiXh01Bi2O9F93dn
         iU8L13YZGmYTe0wq5unHdOS38roZQP09r2l73VC1yVhZTks8eDt8nKlNgHAqs0gpaNQw
         r/hPPcwWzOx2Mpm/GctySN7P4dgqxmfrcbkUHFaUV6fWPzMUsTpNFhBfbChLM3NGZnWb
         rIcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH0ouUYtVeJnmPKkK6NR7ZB9DOBOUigAwfJSf9RUNgfIIviV9PJ/0k3+AMvs7R1CrD1oCw8GVQEgH1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx44ULJAd1DBDnGvClNM+88LxfVPoV78KwRqh593tR9AJ/M7uo7
	v8sOP38wSfmQzT289fjA1ggATddyxE1GMLRKh+xH2QiA6ZuvGUR4BGZuitGU3gt/5EDGxRwq0O5
	vFJCF+enrXxL0m+zjuxNpLjhI1Everjv9GjoGvH5gQPSYkEeqw/Hn2xSA/DdxfMe5
X-Gm-Gg: AZuq6aIyEdj1dx3avMCOlWf/EDks1dbuSCWRpDYrr8alQEDpmZPPXPMJa6N75QVvYSE
	ipGJLB6wsOlM/YNWwvd4OHks+eeLc1xTfFwv4wCWZVtXOili7HgcEZJAFXft+5Roc+Wz89ASzi6
	DnNtSAIwYTEa07M+FE5llMiyB/7U6dr/UIgi8BwYdQhOCBbTO053eZuH/KxyX9COOHoeOsrESgf
	RRI8KEtySsiOvF/JIhvwuTyJYnHqQIIzGmOTH0F8n7uPz5rElW5wtyGaa/GJk8iIC+4D06L9UqY
	XQGPqXRHCyXW8R3lJPGFpuWY0/miayIzG/oMV/9fyNL26LVZIqAI13RCBsM3dZF2AbZbTAAwHpC
	swU01rxKJexoMhZv2GUil6X+drOITONyIZdk9Qg==
X-Received: by 2002:a05:620a:4046:b0:8c5:2dbc:623e with SMTP id af79cd13be357-8c70b8cfd23mr138532785a.50.1769509121412;
        Tue, 27 Jan 2026 02:18:41 -0800 (PST)
X-Received: by 2002:a05:620a:4046:b0:8c5:2dbc:623e with SMTP id af79cd13be357-8c70b8cfd23mr138530785a.50.1769509120943;
        Tue, 27 Jan 2026 02:18:40 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:262e:d32a:e347:8b74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804db7b434sm129589805e9.4.2026.01.27.02.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 02:18:39 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        bmc-sw@aspeedtech.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/6] Add Aspeed G7 sgpio support
Date: Tue, 27 Jan 2026 11:18:37 +0100
Message-ID: <176950911309.20207.17767153546829205311.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260123-upstream_sgpio-v2-0-69cfd1631400@aspeedtech.com>
References: <20260123-upstream_sgpio-v2-0-69cfd1631400@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: NAaBM7qhvcPoayBP6a50BOG5c2_GGoHh
X-Proofpoint-GUID: NAaBM7qhvcPoayBP6a50BOG5c2_GGoHh
X-Authority-Analysis: v=2.4 cv=J8CnLQnS c=1 sm=1 tr=0 ts=69789102 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=oD6QKIyjnqh-ffyw0PwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA4NCBTYWx0ZWRfXxEvC90cLDwgS
 88M93BzEqi2BcDM4w78nvxQaOf0liLFRg5ownRWk3tfKrGsT4YAmzN+uiriVQSy4L9Dju6lZGR1
 tAYJo7TNXjuNLgqI9GBGUpgHjevytgxGRAsSDS6YN6dV6ta7Q8SlbQ9OPPZygSyjZFAGzs6iBA2
 4r1t77JfZu9YcoKlK7WmEvmlP5ZUI6NopSunk99UDasF+FCLjvbaVhKQP4kT5dGjz1Ws+3VUfQr
 PmIgs8Sx9tLK/IBtn4PXCYEBBWvCElpv6uaiTsMmKpiFQWb1UstRXuOYErbTTCY9qGpFfnXpJrz
 A+F2JqNFRlu9lDHwnJLXQxaCExoVR8+GRONeTHQStnkROJ8a7DqkJkTMWQtIKO6koKc2nIJJ9V4
 EDJFdcqjcye+pzy7uRAQFDfx9qt37IHBJliJkmTv5B0xV9YRgxIiahVT/os4hK1+wZO7mV2is+h
 PCGRf5LdnxIki/T2HEw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270084
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259816-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 60CE592BAD
X-Rspamd-Action: no action


On Fri, 23 Jan 2026 17:26:25 +0800, Billy Tsai wrote:
> The Aspeed 7th generation SoC features two SGPIO master controllers: both
> with 256 serial inputs and outputs. The main difference from the previous
> generation is that the control logic has been updated to support
> per-pin control, allowing each pin to have its own 32-bit register for
> configuring value, interrupt type, and more.
> This patch serial also add low-level operations (llops) to abstract the
> register access for SGPIO registers making it easier to extend the driver
> to support different hardware register layouts.
> 
> [...]

Applied, thanks!

[1/6] gpio: aspeed-sgpio: Change the macro to support deferred probe
      commit: e18533b023ec7a33488bcf33140ce69bbba2894f
[2/6] gpio: aspeed-sgpio: Remove unused bank name field
      commit: 5928e0d1f66112b49869c83ed8f1cc9db3df69e5
[3/6] gpio: aspeed-sgpio: Create llops to handle hardware access
      commit: a3d37e0cccf530a1bad377b3503d6af757f532c4
[4/6] gpio: aspeed-sgpio: Convert IRQ functions to use llops callbacks
      commit: 43090d6993341b977ca66f4c72e776e99f7ba996
[5/6] dt-bindings: gpio: aspeed,sgpio: Support ast2700
      commit: 149470018e678b8fd62225c01be67ce2f9b5b1f2
[6/6] gpio: aspeed-sgpio: Support G7 Aspeed sgpiom controller
      commit: 274ea0f1687a849ded4f92d10e4c0e77f37740c9

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

