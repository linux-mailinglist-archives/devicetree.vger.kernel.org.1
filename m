Return-Path: <devicetree+bounces-271447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE/aKaBKqWn+3wAAu9opvQ
	(envelope-from <devicetree+bounces-271447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:19:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22020E356
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 996333016EFE
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1BAF37649D;
	Thu,  5 Mar 2026 09:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S59wHPBq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aq9Kb0iX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D69C146D5A
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772702051; cv=none; b=qFFXylPiYGiTufHZ4wOuUDPCZVmJvbrPBU8KuPmDsSxB83H8+cyt4/qYPVOj2PbAMaM8pNxEZgQYsXcpqnGiD9iPBCo0z0ahsu500CQYmHnaHd7GkWzvmGqw6PauFILcZcPSdbdsWqh/Srw+YjjGQ2hSy9f94tScyAY7M20HODk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772702051; c=relaxed/simple;
	bh=ABbwNnbX68MCoQUd0L/YU/e9qkQ2K9Rtw7oFI+J5/Hs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XtcsbEJLrjzD0gdSwhWB2HGpd5H4X9ELX0pCmdONZ+6oP/x7qrmiWD+Bz5MRn5hQKXQx7+pxraS2/+/v5L7p7GXMwpAHxqrlSYRTGU1Rf6DdBnCIcaUD5KCtgWOwA0rs1Lj8FihBpwXHPgyP6ZtUqiy6vnKkrTu9zM4LBCCeKEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S59wHPBq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aq9Kb0iX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6258sWKc3483047
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:14:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3GP92JxJ5XdTy95M9wMZ60Kmbd0bBaggFoNOnUj6RJs=; b=S59wHPBqzwn+0HRq
	gtYBzZd7yTP0l8Vdr2fmgaGAhS19BcZvFGM2Hp6KqPNcWN8SkcVyVqHF34IXTRz4
	BnJjyGjNeZGE0ygD9gFziquvChoGWw+LsjgmAl5NAhv5BJjPhvJFyHYozMQxKSP3
	H24dZff6i7ZIOOV5NMw+/dbrFBeeGvLEbiPQjzK4yMSCWz2Z+BrXqZB7iHQKAQDF
	28XCwJ3Hmey7d+HKnYmxi3atgHW7V+5rmdV+Vw15DOITebupNLTN1kr6H726tVbn
	+QyJ7t6hBgFYMCeEmI25LXfLIWcpigNLAIAQh+KClaDw+MRDT3n+/nDsYT+jmr0Q
	OFXvKA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wjm9t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:14:09 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb39de5c54so571226785a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772702048; x=1773306848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3GP92JxJ5XdTy95M9wMZ60Kmbd0bBaggFoNOnUj6RJs=;
        b=aq9Kb0iXae849vqTzl+Poy4RPxOHn/5/mSikdgptFwmdhpfpj8twXCkQuCHPSaz1lh
         WzOYurtB65PCh9lLMdvK8FoXqW8ae7zRsaEy6+CVrFw3utEt1jRkHDSrFtgSTdr8TkRs
         Tr7hBUSg1qioW3dvl8clbfDU1r+fQ2P5b5NdnIGC8KhtiRCBhDEbEDqUtjZyAkIECCGZ
         BYxPjJdwvqRJEtlGrxvGxME8w02Ze9MhTpKQYzjEyPlCX7BjKLEvg7NkdHma01MBR0mE
         BfCB/oUaptSMN6cjFHsdxtp0AgTUyFk+f3oqzf0B3JUylBXaiTOMQrdVJGdFwjtH5lap
         XLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772702048; x=1773306848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3GP92JxJ5XdTy95M9wMZ60Kmbd0bBaggFoNOnUj6RJs=;
        b=lR/nbOWEa6aK21bo5gsRmvMhczorsUuLlO9+MFtaJDKrBjLMVScbE7q1uqWbhx5tIQ
         TOiIDocJvOozlTa6ErB1FLc4ZzzYevjzGO/ceYgZOZVAuGa9+3TpwWEGVLYxzhzpKkhm
         nBylb40wgdf+hxQiHX3GybI39EioyEGxVCz40ZBKG4dXq0vxILnl0k0zcUuw87B54uR6
         Z6Qsj8SPKbESIMLViSmllwBJhHhe//XtsKXVk9DaHeESs8R6zg2TywBy6ZTd8VzzopPX
         kTBhmD+0In2gj0Z6g80VttUEsqTfnkzwyUUkHZ1LQK4lH7begI3ThbxukMCppp/cDqz3
         4gzw==
X-Forwarded-Encrypted: i=1; AJvYcCWIiqulc6RBYvEBStSXrNzbJzDXml9r8JcltTG3e3Hk6atopU+rU+2cYHHNutrTPz2TvHxpz/Jb1pvt@vger.kernel.org
X-Gm-Message-State: AOJu0YxO8RKQtHfQ6iMZio5BqqCAo/OHk7ji6g7Skk228gTfEWnW5Eoh
	v9Ez8mzu7uk28TTMC22Z3M9O86s+Yixwt12iP2dZJNncwkCmtliI9UyZcXKn8XR/mlOBn50Tp5J
	vvaFVkU5D65/uKR1HA9wNoJWJAezEEjMTrr5Xz4Z4CgoUi+k7pgos1Cc+NP/FrpaW
X-Gm-Gg: ATEYQzyX+B/c/m954u8uPZtbcrzNilBtfFi1gK2aQ6pJVb3AZ4L3kgH177PS+7GZ/Ze
	s3qcCC1vgB9XgJ3xpcWQIjwz/XlxJYPHEgXUIJVKZ38QEQjCAgxsJ6HSZ1xX61NUSyRaxH4j7DW
	b9xy/n/qNsoRQJ+CKvV0vFW4zDj+J+76A3WjXvPsFIbkDMqnCruqTCdO9lLhNKfJDWAdApVat7d
	4MXhTgMqrJ0iqMCTfXvjs/7vOSIiMUCapzq2JzBx4YSqXULehOEpPPOBxF+mbEo2cjFxPDlxsMS
	vhl1BnYjwOIRRo6SOT2hmPqsINd3VF9dICoyLHZmn/F047jNWqGPDt8GGwpvuT5MPJL2Baf4v9B
	pwLle+fkORjEiU8pZtlOSNkSCc9RJ5szAsM8o35zWmq3q3XSaUwCk86Tww7a/8vz1FjC2GXy2uo
	TQa/s=
X-Received: by 2002:a05:620a:3952:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cd5af0c89bmr485576885a.3.1772702048547;
        Thu, 05 Mar 2026 01:14:08 -0800 (PST)
X-Received: by 2002:a05:620a:3952:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cd5af0c89bmr485574085a.3.1772702048116;
        Thu, 05 Mar 2026 01:14:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b94172ca2dfsm14401566b.36.2026.03.05.01.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 01:14:07 -0800 (PST)
Message-ID: <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 10:14:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane bifurcation
 support for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gl6HKjrKzLRtCdaOI1mLuyvz-xUYW-bn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfXx0JRooE95yt3
 jV/lUE7bwkjSLdDodG9dgNFpEqB7BDS304odSqUJZA4i11SmPbs1ntMIcd2ZLlg4QNpZspGjko7
 bL3eugowDVe4MMa7cdb0OVkqR+vTGlyENAeUusa+cD4zakQKvr9RMGNN8QiYcGzNrlsqUYeNCLC
 9rIx/4wtMhQHS6jMa8SLo4Kv+1Tezf7hybIpBvQtlXeDt9O6NFFbjdAANgMHTBntuJ86hyDo9eo
 iNV7oQUAT5FFOKeZ2Q+PudzMjiSqiBKJqzu0v4elrK4xDhLSFzperP7Nn8PAjEeHWVHEytf1niE
 5i+y0j8vIfGcedZJroRUWrje1kloC7w6vduJLZwrAGGuU8SWIeC8DXAeCuQGsWdelo+EaVsE2wc
 SRmsDoUsK4+B/uix8P+/0JErOP50IFYRLogbG8EhwaVRNTLmYKFnSG22hbmnCUtptzjpAzkoadz
 qQucx+YKT4WydOMPuhA==
X-Authority-Analysis: v=2.4 cv=OYWVzxTY c=1 sm=1 tr=0 ts=69a94961 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=MH3fQNhLqH5gLyV0EUgA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: gl6HKjrKzLRtCdaOI1mLuyvz-xUYW-bn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-Rspamd-Queue-Id: 0F22020E356
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271447-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/4/26 9:21 AM, Qiang Yu wrote:
> This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
> the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
> acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
> Gen5 interface.
> 
> To support 8-lanes mode, this patch series add multiple power domain and
> multi nocsr reset infrastructure as the hardware programming guide
> specifies a strict initialization sequence for bifurcation mode that
> requires coordinated multi-PHY resource management:
> 
> 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
> 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
> 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
> 4. Poll for PHY ready status

I think we never concluded the discussion where I suggested the
bifurcated PHY may be better expressed as a single node with
#phy-cells = <1>, removing the need for duplicated resource references

Konrad

