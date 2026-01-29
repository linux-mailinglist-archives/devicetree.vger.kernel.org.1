Return-Path: <devicetree+bounces-260694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BnsEp7Bemk3+QEAu9opvQ
	(envelope-from <devicetree+bounces-260694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:10:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1340AB095
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CE5C3006110
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 02:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C561350D65;
	Thu, 29 Jan 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VM1iV3hv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RUHMWNQM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E068F350D4A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769652632; cv=none; b=C8LqzB2OMgsQoFwgLnWxlsHQMvTgvVLyso1Ss21FnbRCL7pqcTvbTgaspC5Z4kU05ETo1hRs1fiHSgxA5T8eqH6BslXO3KdPdkmVeMrpAH2esdXwlKth7h9wKEfzZNSHa8U0+4spUkRRixX5JT1v73X+WWPK5aCgFIE2xdkjuUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769652632; c=relaxed/simple;
	bh=kPSKblbZ01awn0JV+riaelSYesZA8/A+u1FbCVsCSCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jIoftdV7w/HYHlX7De8WNYFXmxMkxZqcT/CRRuWPiYWuVHub2CIsV+/RAvr0Gtm9M/PY973UpbnLfYkyTsckP5abIy+V3hZvP2bh6GMHF2kqo9TpdvGoQmT6B+Du5rDuAdgd6UdrTTW3XfkIv+iYw8avdY6B/xZGjz5I+3hA2Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VM1iV3hv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RUHMWNQM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SH3Dc3895873
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:10:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rN0ljm0UxseEJ8lxTe+BPg2+8A7FrzpNpVLKHWDnams=; b=VM1iV3hvP5MUwM8m
	LXAGjnJUORzO++eU2bRp5jsETAZvlGwpH8KFpaXyNunU6pOHJaix0uhqBEXo6WDX
	3jDx1L4e+O9MqN1PIpR+nBLVdUrarXS+cm76UT6dr/IV52npxVAgrEQelU9eMCxK
	cnzcn9tYTjjOJ078DyOTeezrH+x+FDhZkkCOX5APd/OKSlFBRwdIGgXxRXjeMfkc
	MlSj30pv3xcV7J57fWWe7AJ9KbBow1JuYpfsZxwVxn0KBBn3+IZ2yHcyw69nZqIk
	LWMVmDcJzOeoajb4lLc0ob03gPZNb37XwXvdo6wY8zIJdnlA0buUOdi8oyyORKLW
	aTeKTQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byph39jpx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:10:27 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-823486f311bso221774b3a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 18:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769652626; x=1770257426; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rN0ljm0UxseEJ8lxTe+BPg2+8A7FrzpNpVLKHWDnams=;
        b=RUHMWNQMkbM1/PWw8lYe+TY8F34RdoQLA3McJ06DLYwHw7MkR1YMdqRPenbe4qYQVQ
         +Dhl/qNXZOpROxHxH5bwC8uM2OyU1SposHw29VpwlKJJgSNNE1jDiSIgzTeFXodjMKJu
         ttzbIgM+mU13OSkWFMdlqud7HA8OEcwZptbZGC2ZN+cmLO3VvVcBXq94SCLNVMsvqFBj
         umcFb5usFJEH4u+U96/yXgnRQbTUhr0tVOND5I+ehSkPvpWCpTj7lfpmFlKdViotrd71
         dHqghQC3TX8uPzj2qwTlOOQvLMDEF1Y9GUvujF1PTwch+0AS9QtcPP/6870gdxOGof7n
         VzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769652626; x=1770257426;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rN0ljm0UxseEJ8lxTe+BPg2+8A7FrzpNpVLKHWDnams=;
        b=pdQ1tRn8248Cd01ZqDip3nWqvSldWaQ75ONzz+dgSYwIPMHKzp778nAPYA8Srx7978
         EpOPlFRL5a5speLJgm7xwgb1SjoSBJqUsBtkHsPxVdz5rD4D807PbOM+Bb7Gc2yCvTcs
         qSOd/U4YHHE++PVF8k8QckoiJAlR+mh+hF9HNFTgQbLnt8x/xbJ/R2C6mGCMtUMMoeKZ
         9ZP9IdLj4TMAFw7gX55P7o3qAVGxBh63Ty3sVMZD/pjQMPyjP9AVPab9u0akvcPoEp4f
         oLa8BcbMT6hml17BJ2UrxrvKy+7K9jNARiL+99ajqjAowdcEojFP08tMVteqJ/eFgv2Q
         9s1w==
X-Forwarded-Encrypted: i=1; AJvYcCUUJRnpECFH+JMzxz/8JIySuDkCR+P8GJ/2/XMtBh9JRxX5p+1egQP5Qnd9bODWdt3GOQfuUlLnvRT8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx/YXHuA7j0NdaPkpWszpqhgiKshUmVoQGXttInnKq4igYhyB4
	4KHK2JYGmrapK59xGOUaSwlRT8FzU0SFaloMYvcfhxKVA8XpU0c5V1ppoRT6HHzS+IZyLlSFWeP
	t0CixMHxL4sVyYjcHeCTYgzNM9OU+h7B0sis0qJHTxVbzR+IwWiWJjnNfFGp62Lg2
X-Gm-Gg: AZuq6aJx/vCJ9cklpLXgK4KaGJqIIcbIV01oIo78Xkqgdwd4r2qg9LM7b6Xn9cHAHYB
	aHtk+Ic3L9HXuNYqLkPz1XAt1s7VyPIG9p88wWHhBNyAJHlOvdAsrcOuX1SwlZox9hUZR1XY7aS
	O8xwcM3rbyhFEs67gBIyWM/PN2XFy/a28p8P2srPTeTpoBHss3jwzDhRdRVhfiCgC52pA9s72cH
	6fRvZtDDDqPu7deUBYU6QELsz2rTttf4rFF/qGGaYxDuQCp2LxgeTRuoMidLe3/4w0K9sAVLlUc
	DpgwH+327x/MX9yAcP7+gC+eIMBO29nAQrZ44Phjo8FExb72af+ncxqJ2PiDPyqvCu72hirCZtd
	jX8SqthWOhoT2E/DQfe1eBpM2wkLxK0++LWIk9Er1dQgXya0zufkPbFH0fuvhBvvcmBW0Tn50So
	z4TD8wrI4=
X-Received: by 2002:a05:6a00:2d0c:b0:81f:9f41:34bb with SMTP id d2e1a72fcca58-823692cf1eamr6317505b3a.56.1769652626429;
        Wed, 28 Jan 2026 18:10:26 -0800 (PST)
X-Received: by 2002:a05:6a00:2d0c:b0:81f:9f41:34bb with SMTP id d2e1a72fcca58-823692cf1eamr6317482b3a.56.1769652625885;
        Wed, 28 Jan 2026 18:10:25 -0800 (PST)
Received: from [10.133.33.202] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b6b277sm4347222b3a.29.2026.01.28.18.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 18:10:25 -0800 (PST)
Message-ID: <81626c5b-f45f-49f9-9de5-5e6c65455b27@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 10:10:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 ath-current 1/2] wifi: ath11k: add usecase firmware
 handling based on device compatible
To: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jonas.gorski@gmail.com, krzk@kernel.org
References: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
 <20260121095055.3683957-2-miaoqing.pan@oss.qualcomm.com>
From: Baochen Qiang <baochen.qiang@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260121095055.3683957-2-miaoqing.pan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z93h3XRA c=1 sm=1 tr=0 ts=697ac193 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=kmMDWrLNbHBTTpzL4qIA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: oZ9F0hbmeBJzn_2wUoedbuPE36yPIayr
X-Proofpoint-GUID: oZ9F0hbmeBJzn_2wUoedbuPE36yPIayr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAxNCBTYWx0ZWRfX8162pgQ/SuT3
 ZicvZdWcb2UTrNB+hWu+1xtGD0tRg+q01cZ0pJ1uRD+7LZe6mAnJkMz2+HKtXV9dc21pxY5ubin
 1VzWjDa8hayLh04WUR4fUb5kGJa55s+pEAtNSDoncvUmR9S2yM39OGvMoGBqhoVQMiUzzk+vKIi
 DNCLGs+9yCFaXmL6W0HeqrrmjbRiQr/nL2TeLVz4ew6AJwh/MVevyoalCS3vNq7eqevBc72GBGq
 6Aubu1VsKjuQeKQAlh/n2y0xSk3xV60JxiF/26jBmvlPameWLf7MjaS+YsLF0E4N11I2vijhOxZ
 2lmqAl1Pq6WgxFUWlk+KO8Q4mVVl1P/w2w8Ys+rGvgHqhMCGMkPdiVUz1yB5jxxRkilJwhn+cgi
 k4jwvuoyJhpvidJlPw2dWAHRkpoxzWkejee3Ju13UIkCDkfb4lGBRX3+6Ge7hxfiM9Puf9p1IS5
 EL5E0rJyI4EX6VaqJLw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290014
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-260694-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[baochen.qiang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E1340AB095
X-Rspamd-Action: no action



On 1/21/2026 5:50 PM, Miaoqing Pan wrote:
> For M.2 WLAN chips, there is no suitable DTS node to specify the
> firmware-name property. In addition, assigning firmware for the
> M.2 PCIe interface causes chips that do not use usecase specific
> firmware to fail. Therefore, abandoning the approach of specifying
> firmware in DTS. As an alternative, propose a static lookup table
> mapping device compatible to firmware names. Currently, only WCN6855
> HW2.1 requires this.
> 
> However, support for the firmware-name property is retained to keep
> the ABI backwards compatible.
> 
> For details on usecase specific firmware, see:
> https://lore.kernel.org/all/20250522013444.1301330-3-miaoqing.pan@oss.qualcomm.com/.
> 
> Tested-on: WCN6855 hw2.1 PCI WLAN.HSP.1.1-04685-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1
> 
> Fixes: edbbc647c4f3 ("wifi: ath11k: support usercase-specific firmware overrides")
> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
> ---
>  drivers/net/wireless/ath/ath11k/core.c | 27 ++++++++++++++++++++++++++
>  drivers/net/wireless/ath/ath11k/core.h |  4 ++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireless/ath/ath11k/core.c
> index de84906d1b27..3f6f4db5b7ee 100644
> --- a/drivers/net/wireless/ath/ath11k/core.c
> +++ b/drivers/net/wireless/ath/ath11k/core.c
> @@ -1044,6 +1044,33 @@ static const struct dmi_system_id ath11k_pm_quirk_table[] = {
>  	{}
>  };
>  
> +static const struct __ath11k_core_usecase_firmware_table {
> +	u32 hw_rev;
> +	const char *compatible;
> +	const char *firmware_name;
> +} ath11k_core_usecase_firmware_table[] = {
> +	{ ATH11K_HW_WCN6855_HW21, "qcom,lemans-evk", "nfa765"},
> +	{ ATH11K_HW_WCN6855_HW21, "qcom,monaco-evk", "nfa765"},
> +	{ ATH11K_HW_WCN6855_HW21, "qcom,hamoa-iot-evk", "nfa765"},
> +	{ /* Sentinel */ }
> +};
> +
> +const char *ath11k_core_get_usecase_firmware(struct ath11k_base *ab)
> +{
> +	const struct __ath11k_core_usecase_firmware_table *entry = NULL;
> +
> +	entry = ath11k_core_usecase_firmware_table;
> +	while (entry->compatible) {
> +		if (ab->hw_rev == entry->hw_rev &&
> +		    of_machine_is_compatible(entry->compatible))
> +			return entry->firmware_name;
> +		entry++;
> +	}
> +
> +	return NULL;
> +}
> +EXPORT_SYMBOL(ath11k_core_get_usecase_firmware);
> +
>  void ath11k_fw_stats_pdevs_free(struct list_head *head)
>  {
>  	struct ath11k_fw_stats_pdev *i, *tmp;
> diff --git a/drivers/net/wireless/ath/ath11k/core.h b/drivers/net/wireless/ath/ath11k/core.h
> index 3f41e6569a78..a0d725923ef2 100644
> --- a/drivers/net/wireless/ath/ath11k/core.h
> +++ b/drivers/net/wireless/ath/ath11k/core.h
> @@ -1292,6 +1292,7 @@ bool ath11k_core_coldboot_cal_support(struct ath11k_base *ab);
>  
>  const struct firmware *ath11k_core_firmware_request(struct ath11k_base *ab,
>  						    const char *filename);
> +const char *ath11k_core_get_usecase_firmware(struct ath11k_base *ab);
>  
>  static inline const char *ath11k_scan_state_str(enum ath11k_scan_state state)
>  {
> @@ -1346,6 +1347,9 @@ static inline void ath11k_core_create_firmware_path(struct ath11k_base *ab,
>  
>  	of_property_read_string(ab->dev->of_node, "firmware-name", &fw_name);
>  
> +	if (!fw_name)
> +		fw_name = ath11k_core_get_usecase_firmware(ab);
> +
>  	if (fw_name && strncmp(filename, "board", 5))
>  		snprintf(buf, buf_len, "%s/%s/%s/%s", ATH11K_FW_DIR,
>  			 ab->hw_params.fw.dir, fw_name, filename);

Reviewed-by: Baochen Qiang <baochen.qiang@oss.qualcomm.com>


