Return-Path: <devicetree+bounces-273582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PJUDaQ5sGlbhQIAu9opvQ
	(envelope-from <devicetree+bounces-273582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:32:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F722539B7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:32:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 26C9E31AE472
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F81139DBD1;
	Tue, 10 Mar 2026 14:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pgmMYoQk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QzuzUdtv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2C3397E8F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151984; cv=none; b=f6XyUTLcE4lmYWtlSxDK1N1EqKGVh7euDx+fhKPHSzeQbJh138YiMiKHxqwEgdJAXTrWXk03GGOtBWwk01h5oHRCQjV5FyIFcS91DNMxyrEtbluZ+X6jDUBKVXAOplcMcvejXM0nIITosN8/IWjnhnebXmFcaDZ6U8kiz4wbpxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151984; c=relaxed/simple;
	bh=5e1avswzIdmR90jxg3X+B+Ty4A5EkdVEGxOjLBbWb40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LjCPYc2F2MjZcC2nqDIKb7mdcAP8ZP0S4CVrah7B+JHN8eATtkRfu6vlAlIguJ245Js+8BhjN4Gc3aRotvv35df0SZ/4P5HMymNVy2hQ0dD8qshcAGhnvlSmh4NTbQGS2V3Wm/zsTllqh8IV/vIUVQDoZVfeiND2weXbMwB8bAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pgmMYoQk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QzuzUdtv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaTiV1502932
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	viDjOwaw/yqQllLUim5qk+i23DOu8Ji1UjzfbpgTqK8=; b=pgmMYoQkeEk61lUi
	8/A6DcPji19sWHbMBixbgYn9jvuX5P5DEjbgVf0om2omBa4g4kjpQ9kMq+G1zC1v
	4EZyjHFDTO5Xnn68sEYljYOeDfB28gjxTIDuSOa46fhB5zZhe/oyZbGZnz0oHx9y
	QRK359kQHLf+rJwaw4Gic2/bXvCaTASNEH2WbTHkKtTByZuT3sH1F+Wb7nsWo2Mg
	YgBAxQ0ZwvoFYjxL+Hjsn/RjhFE9AzCTxLpQXT9HQvVuhS79X8Ux+d6RNgtAuLjW
	vwyxYXVUW9GHjC2A/1V519Nk+xD/2/eBYhieHmdEZL8sE5A397u0LWyU/uiWZl2n
	B14BaA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctdf8huq4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a5b38affdso4992266d6.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151981; x=1773756781; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=viDjOwaw/yqQllLUim5qk+i23DOu8Ji1UjzfbpgTqK8=;
        b=QzuzUdtv5sp5QcF9fGsTLespGvWfkCt0KbPV9+ZbmpX5CZ5Qq4k1xFD/B7i9XXI2d0
         F04z2LdzOWt5HGyLpyN2O+o2esKOsfrId5gA0K7qk7eS2LKhr60qgm93YTQesfJAJw/Y
         tOH5Bcbky/DCWgyQPKSDvKXh/IZpHh6CrTRTgjKcC2RH1WK2433N55BKQUwar+Ed7RFs
         06I7kwCLW08yi4lvjXEr+DBhYwPRAiegV2whj+YjHf3qGddh38t3qJ8o65TH7PiwIRiM
         3ty6D7IQIBmwD/2IQRgUAeYy+NHsJgwz5Hv3i22OegUryI/JXo3MhZva45P/qgljso6J
         WgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151981; x=1773756781;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=viDjOwaw/yqQllLUim5qk+i23DOu8Ji1UjzfbpgTqK8=;
        b=j1K50Yh0F8n0BRzZZAISQcEMNGhLB9zxuLJRay1QJlIo0Q2vU9/hCC/xvP6FhwvvFB
         BYwtAeVHx/mlH0krq8mNf/DQKbiU8x24n3Nab0pf2XiUw0vRov6cBGYP9m01mkxTp1rO
         U5/gTduyksXzyASNjMmdKvpYkN3zM401qp2lkatt+T0NErZnMXT91gs3RA2o1y6AkjoH
         IMsbxZ/E2NVwohsYaxsYKX/0hPOORIhU5xXErwylm3mXR4jLLYElhtEBdrk2rN2GzsjG
         2/qngDjr23yTnY2s25tEq/pzDH+DSIcXTvocuCoPjDkURr3+fETeph0dIqMjZ6WNEQMu
         iBKg==
X-Forwarded-Encrypted: i=1; AJvYcCUHMav748YoQa2f+GuzNgass0VpyLAOFJMi1quIY3wr5BfiVKbmhzO6NoZ594OiUKhuF9Ai76YgdDmS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpx4YcL2BGf7GxmmJEsqq9Dq7dWNXlDhc4tU4+H+BgdTAKlpjy
	wKd0bVHYsInKPskmbUS99YZdP8+4LKj94qhEowaJdyc5dGH3Iyc4XpZrSIcom/4aS5Prh+W5SN/
	5ATW/ObhXtGOtVx9J3Dkjo1xAcqSD81zUryBq+SLCuzu4itURxW6P97wDRSdPm5Yw
X-Gm-Gg: ATEYQzxwzvc1bxvfc9PnMObRs+/UmZ27BDb4Pr1BrCeXTcnzUQm13s2i54jDLgGonSo
	ClEWFns3mAo/lpqu7zskP3CyefxauNRhBNU4W2zeJKesBAJe9S+Amq+NVpOYQ7eit047WX/85+j
	rX6zqSemgBV3NtSjNbnzRL1EtB90u+9HUfwt+NgUPPUzX6jdRL8pcOnuUrJYD5o+6Bjuu+8/vaY
	W4X8PAfXR46man07COswivbAjfqN7rCaOy9rwap02fUnMGioeH1sbhQx3GKkkuYHLEO1t1oDuDj
	98nTOznhq0gxmygB0efm2qav4UuS29bCEc5ivXT5X2YzAu8EBlncaZ36Dn+7aXUJW4gzgqnU9wx
	ezrfcqhTC9uDyWPDR3FndMTM/z24dj7hB0aNPvFcLnI32S4X/13tWD2twyXzN58C5brbYCbZo68
	RsfMY=
X-Received: by 2002:a05:620a:4087:b0:8cd:7fc0:ee15 with SMTP id af79cd13be357-8cd7fc0f6dbmr1089001185a.5.1773151980755;
        Tue, 10 Mar 2026 07:13:00 -0700 (PDT)
X-Received: by 2002:a05:620a:4087:b0:8cd:7fc0:ee15 with SMTP id af79cd13be357-8cd7fc0f6dbmr1088995085a.5.1773151980118;
        Tue, 10 Mar 2026 07:13:00 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d3fsm4317323a12.2.2026.03.10.07.12.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:12:59 -0700 (PDT)
Message-ID: <33b27a0e-d369-4311-8372-82da4c331256@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:12:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/11] arm64: dts: qcom: sm8450: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-7-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-7-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyNCBTYWx0ZWRfX0hoD6gO5Civ9
 iVI5VRQ0Fe8kYVwEWjo0R5taDpR1dH9gnJIXhd/Fzoa/OQLIitI+LKmtpgjhNikDSlzUUr7YS76
 rdWk4LFRFwkyOEXuy3iOJw+uyhZEaXc1Z6WNHAvlNb1/G11I0XWuh3MvLZPIkjSTWEI2lGv+ByV
 oUGjyOSfzXCdYnm33LhTGQzsozw9LOjsU+Cbx3S/L8tcL2PyXeuk0tb5M4/ygmWl8WH2ggrbmGB
 FtcMmvk2PSa3lRW4k+4qAok2QPUYgfG4LruypY3f8Z3gpxLSaplcM/9jxyMC6TzRQ0DOp0GP3+S
 DNYNUdRbC2lykjNeNx5d4wbSQmWGu2RHYF+byp3fIDyRiQmPyvmsNKqecmiEqgXU1loBkrl+gtU
 WnRE1Gm6uNr77ZIr7I9zCnzHnzbz05zXlAPM9bJFiZlFMs4i10dsPC5GgpBsve8KOpH7/cEYbRP
 9NLgK2WYdhJt7F/lDjQ==
X-Proofpoint-ORIG-GUID: -EG_RSxQdbZ-yIOxTfgO8jBrfb4RAc-X
X-Proofpoint-GUID: -EG_RSxQdbZ-yIOxTfgO8jBrfb4RAc-X
X-Authority-Analysis: v=2.4 cv=b+W/I9Gx c=1 sm=1 tr=0 ts=69b026ed cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100124
X-Rspamd-Queue-Id: 61F722539B7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273582-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the UFS_PHY_GDSC power domain is enabled. Specify both the
> UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sm8450.
> 
> Fixes: 86b0aef435851 ("arm64: dts: qcom: sm8450: Use standalone ICE node for UFS")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

