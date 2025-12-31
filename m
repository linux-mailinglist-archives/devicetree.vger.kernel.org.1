Return-Path: <devicetree+bounces-250722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ACFCEB58A
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 07:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54E87301634C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 06:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF34310645;
	Wed, 31 Dec 2025 06:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Av8vRZON";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="De2G9Zam"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A05280331
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767162748; cv=none; b=pu8LwhHO8hmrqD0r19qK+2PNP9KAenPNyR0jNSWk8gD4Os7pDRUO4lDyJYSVpogEKLSfrZCScD78+H9F0Bcko9ngRj7kbbXBJy+u/AZCPv3wF1WS5eWAhdjIPIP/hEW8Dmr9gzKJMIsRPapjWxISSUIceEC+FJBoeHIZPmSffd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767162748; c=relaxed/simple;
	bh=khZ9ttJ5XzpfMejS4n5hahIUhT4UgpastxEqOY54trw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iok5vQPBhDTav6m5FYlFFf27DrWIYzfwrwOH41m78RlieGKHehhkIPldm9Blrx1RIv11CUddZ8/6YnRU7ohoxUuRLDJ2sYBNahAs6OoxPwhOodq7ds7QQuDR+Kaw6bSf0jgGY7yl+aUyXkN7+GMb+UdqcsySKf6EJOuny4p3nr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Av8vRZON; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=De2G9Zam; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV62OMC2050705
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:32:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I0MccUjFbQfMKBiINzXD3NEsxwpCWosPKLjnAly80CI=; b=Av8vRZONhrr5iMyi
	EEz0wb9WHY307nxCbCGNWjsimloAVf4vQvgJsbec+nUlXrK5A3LPkEwAoIU7Pl9N
	jnAUPX+AVR9wflWeT0yq21P4uQWVkFtFpE7RB7CeYPuBksVu8qZR9HTwAI3JIsZL
	3CqPDER8+22nr0wVSwkEMjxDahKz+9EMyY2FckRvs9iVxuNprzn7KRxxjo61Y35p
	muYMaB9J634z3TY4sDoHX5qVrbxvdrQVXQAbF3FsoG71lRj6WwEorRMHuWY7ffg8
	+kau2Qqx8/m/eo/3DqYwy1DGAL6OiIhJO5RDxCEmP9AAT/yjBrGenizqVu0Vghs2
	ZyetoQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcx7481ht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:32:25 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c904a1168so23302341a91.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 22:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767162745; x=1767767545; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I0MccUjFbQfMKBiINzXD3NEsxwpCWosPKLjnAly80CI=;
        b=De2G9Zamvt5IqkLfQLyVNutoat+wrbuwFvaUbx2ihFGX87TGSP6aJYkLJjYgBymbJG
         g5FYPfRB9YmI0wt5DJBD8UYgg2/MVPAa2B3Dak5Tr80Cg6Q1Z+xvfrefJ6W8gqeh1EiE
         NRmJwNbY4PdbzyoGwzeeY1BlqauJj3v8uIqA+8j0B+/gst7VABBAwZSeUsi2RPb1jLmM
         Bsx6cVPH62j9zo/cxI6CTEdF4vwl/zkZvoGunbGYtpP6oEwvp14jQpaDeTYwhqwml3Mf
         aKeD7LimGBKvQEyuFsSLs4Oql5MyqJgoeJyzLfRrz6Fisv8oJxTdHPzQy9cF7nzjXw5P
         L/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767162745; x=1767767545;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0MccUjFbQfMKBiINzXD3NEsxwpCWosPKLjnAly80CI=;
        b=e5yEFxJHNKOSs5HWpk0UKp9qfGupiOCj2c4vYaSmJSeoPuw7JeSXeJ08oAlnxCsU2K
         YzL4wcUlehWhj8pKkL7/1tSiWfYH2+tZHL/eirHFlnRYG6Wrj+6aQ4CSUSSwn1sWl2Om
         IoDPV4OgAUwfn4gCmRPMPyOOhwVhnc+s0dEGKmLtcEbauDvwBdsc3XlykYE1P7YvlZNU
         x0PeX/172jNpGAuAi12CnH4N60017IBHYbv4bNzyy0mvn/jgKgknk8NTTfs+2l6ozEWr
         UG/XZqPYEYZcgev1+RGegSwLEhu9UaBjsyIwLwpoc7E5nbhWlSjDOa3dheZh2kpbWZZe
         VQBg==
X-Forwarded-Encrypted: i=1; AJvYcCUXkiAbGWGieQqpKtQoZBO6B+cSz+Zmrdy62NIR5BelSTkzHJ/6n57J3NIy++9emt4tBwtV3d1t7Jcj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8w6VJ++Yfqaynyi1oH0wZFYNVNHI0TGsoGh0Tv+hOGOb7T8+q
	E/Q47xqlb4LT7xEuuwrskuFEdgq+QqzVQNG4zT7g9D9OK/7IN8zOCok+GJEkmtyAeH7SEkhO90n
	dnMbx44D/Kt3QdwKu1P16vefu/b/y9VIHlNCY+vNgARdiDe0vuRg2k8YwzSXMCsuJ
X-Gm-Gg: AY/fxX6rYIIV6njkU3IE2dshhXYwcjihZxc6+OwaWVHIK6WTroF2izcdAFUpqAocDfU
	eJaVsD3skygO6g3diou4y7s2i9ratmLGanOzZwtD0R0z6uy0UlxnbPhzDj4pzBf+x/s2a9FaulI
	YO4i8HYYuMmIH47tCWGstrUGaGLswskszsfuQWGFJdZoM8jOpZno0BWN6pNW7X4C5jDfj/OqNT8
	B9PwXXs115gBynhwJpe1dXxcQHys8cyDgtcnwXlm3qXFRS4jMDTPmYWupoEz7HMJoVbE9o+QB1R
	pRcbmwc+B+8Q6EF6zj7b7kXxywgvgs5yhznETQHsB2TaVPTYz5QKGQjdWwrMqavl6OYBCXD5ypu
	Si+/3S395vlkeVNMyu3Alon1GXuS4ALl4rGl9Dvj+lA==
X-Received: by 2002:a17:90b:2dc6:b0:340:bfcd:6af8 with SMTP id 98e67ed59e1d1-34e921370camr30146333a91.4.1767162744793;
        Tue, 30 Dec 2025 22:32:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0lTSomG3VKRs5mySdcNAPA2n9z3HAF0AFfCPwA1Md8uTOZZXgJMU5MdDKtd8LLyMmO1lnAw==
X-Received: by 2002:a17:90b:2dc6:b0:340:bfcd:6af8 with SMTP id 98e67ed59e1d1-34e921370camr30146313a91.4.1767162744298;
        Tue, 30 Dec 2025 22:32:24 -0800 (PST)
Received: from [192.168.1.11] ([106.222.232.236])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70ddf58dsm34525002a91.17.2025.12.30.22.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 22:32:24 -0800 (PST)
Message-ID: <57571da1-47fe-42dd-b08c-a0a6d10501cd@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:02:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 4/8] thermal: qcom: add qmi-cooling driver
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org, casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-5-gaurav.kohli@oss.qualcomm.com>
 <7b48c104-5430-455b-be11-ab23387f88ff@kernel.org>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <7b48c104-5430-455b-be11-ab23387f88ff@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: BKHcdAj1TA6BLSdR7En451sx42Obn74z
X-Proofpoint-GUID: BKHcdAj1TA6BLSdR7En451sx42Obn74z
X-Authority-Analysis: v=2.4 cv=HNvO14tv c=1 sm=1 tr=0 ts=6954c379 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=pk+8NuH2X28N4C0eta/h1Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=iMhoZhh9p9Piq_N3xcEA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA1NSBTYWx0ZWRfX2uqASLGyPt8k
 rb2x3NfHJwQc0N4I8E+0y67CqZ2pqbeelF8OTF7AtnBZbpnNIMInPclk1lto9KtfFh0ONbdPLty
 BdF9Eu6CXmImOgGBh/sDRXxZi9KZqkL+34ICgsPtqjiXG7TPekGuUrSQtgloRQBLcyLfSZutiB/
 8v3vfWGuXmtDNZW3oUs0AZ5nslt787b192z7crsoO55Fcw3mD+6U9t3EXEJNf2grHj4uyARHLG0
 owEM4GyGElE+Lqg9WTcWHTMhleo0YtpqiQ/CoP0IIRQhG5bO1Q3LIBFlLAP2oY9eZdzEBnao0fw
 Lcu+Umomr4ddiRmdafPnwzounH2ivT8vIq9gMWND+y1516TglqE7MrrIRHf1j/OzY5z8b8SrJwZ
 izJupClkWEfpZL63itg1xlprQ0p1IMm92pM8CU3j+GQC9CSsEBuLaWuKuCd5hg0tYFJuKVrff+g
 /WrUqMDr7/5RNd24ozg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310055


On 12/24/2025 2:31 PM, Krzysztof Kozlowski wrote:
> On 23/12/2025 13:32, Gaurav Kohli wrote:
>> +static int thermal_qmi_new_server(struct qmi_handle *qmi, struct qmi_service *service)
>> +{
>> +	struct qmi_tmd_client *client = container_of(qmi, struct qmi_tmd_client, handle);
>> +	struct sockaddr_qrtr sq = { AF_QIPCRTR, service->node, service->port };
>> +
>> +	scoped_guard(mutex, &client->mutex)
>> +		kernel_connect(qmi->sock, (struct sockaddr_unsized *)&sq, sizeof(sq), 0);
>> +
>> +	queue_work(system_highpri_wq, &client->svc_arrive_work);
>> +
>> +	return 0;
>> +}
>> +
>> +static struct qmi_ops thermal_qmi_event_ops = {
> Why this is not const?


Will fix this.


>
>  From where did you copy this code?


We are using Casey's patches also in current series.

https://lore.kernel.org/linux-devicetree/20250822042316.1762153-1-quic_gkohli@quicinc.com/

Will fix all the suggested comments.


>
>> +	.new_server = thermal_qmi_new_server,
>> +	.del_server = thermal_qmi_del_server,
>> +	.net_reset = thermal_qmi_net_reset,
>> +};
>> +
>> +static void qmi_tmd_cleanup(struct qmi_tmd_client *client)
>> +{
>> +	struct qmi_tmd *tmd, *c_next;
>> +
>> +	guard(mutex)(&client->mutex);
>> +
>> +	client->connection_active = false;
>> +
>> +	qmi_handle_release(&client->handle);
>> +	cancel_work(&client->svc_arrive_work);
>> +	list_for_each_entry_safe(tmd, c_next, &client->cdev_list, node) {
>> +		if (tmd->rproc_cdev)
>> +			remoteproc_cooling_unregister(tmd->rproc_cdev);
>> +
>> +		list_del(&tmd->node);
>> +	}
>> +}
>> +
>> +/* Parse the controls and allocate a qmi_tmd for each of them */
>> +static int qmi_tmd_alloc_cdevs(struct qmi_tmd_client *client)
>> +{
>> +	struct device *dev = client->dev;
>> +	struct qmi_tmd *tmd;
>> +	struct device_node *subnode, *node = dev->of_node;
>> +	int ret;
>> +
>> +	for_each_available_child_of_node(node, subnode) {
>> +		const char *name;
>> +
>> +		tmd = devm_kzalloc(dev, sizeof(*tmd), GFP_KERNEL);
>> +		if (!tmd)
>> +			return dev_err_probe(client->dev, -ENOMEM,
>> +					     "Couldn't allocate tmd\n");
> You leak nodes.
>
>> +
>> +		tmd->type = devm_kasprintf(client->dev, GFP_KERNEL, "%s:%s",
>> +						client->name, subnode->name);
>> +		if (!tmd->type)
>> +			return dev_err_probe(dev, -ENOMEM,
>> +					     "Couldn't allocate cooling device name\n");
> Everywhere...
>
>> +
>> +		if (of_property_read_string(subnode, "label", &name)) {
>> +			return dev_err_probe(client->dev, -EINVAL,
>> +					     "Failed to parse dev name for %s\n",
>> +					     subnode->name);
>> +		}
>> +
>> +		ret = strscpy(tmd->qmi_name, name,
>> +			      QMI_TMD_MITIGATION_DEV_ID_LENGTH_MAX_V01 + 1);
>> +		if (ret == -E2BIG) {
>> +			return dev_err_probe(dev, -EINVAL, "TMD label %s is too long\n",
>> +					     name);
>> +		}
>> +
>> +		tmd->client = client;
>> +		tmd->np = subnode;
>> +		tmd->cur_state = 0;
>> +		list_add(&tmd->node, &client->cdev_list);
>> +	}
>> +
>> +	if (list_empty(&client->cdev_list))
>> +		return dev_err_probe(client->dev, -EINVAL,
>> +				     "No cooling devices specified for client %s (%#x)\n",
>> +				     client->name, client->id);
>> +
>> +	return 0;
>> +}
>> +
>> +static int qmi_tmd_client_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct qmi_tmd_client *client;
>> +	const struct qmi_instance_data *match;
>> +	int ret;
> Open any existing Linux driver. How does this part look like?
>
>> +	client = devm_kzalloc(dev, sizeof(*client), GFP_KERNEL);
>> +	if (!client)
>> +		return -ENOMEM;
>> +
>> +	client->dev = dev;
>> +
>> +	match = of_device_get_match_data(dev);
>> +	if (!match)
>> +		return dev_err_probe(dev, -EINVAL, "No match data\n");
>> +
>> +	client->id = match->id;
>> +	client->name = match->name;
>> +
>> +	mutex_init(&client->mutex);
>> +	INIT_LIST_HEAD(&client->cdev_list);
>> +	INIT_WORK(&client->svc_arrive_work, qmi_tmd_svc_arrive);
>> +
>> +	ret = qmi_tmd_alloc_cdevs(client);
>> +	if (ret)
>> +		return ret;
>> +
>> +	platform_set_drvdata(pdev, client);
>> +
>> +	ret = qmi_handle_init(&client->handle,
>> +			      TMD_GET_MITIGATION_DEVICE_LIST_RESP_MSG_V01_MAX_MSG_LEN,
>> +			      &thermal_qmi_event_ops, NULL);
>> +	if (ret < 0)
>> +		return dev_err_probe(client->dev, ret, "QMI handle init failed for client %#x\n",
>> +			      client->id);
>> +
>> +	ret = qmi_add_lookup(&client->handle, TMD_SERVICE_ID_V01, TMD_SERVICE_VERS_V01,
>> +			     client->id);
>> +	if (ret < 0) {
>> +		qmi_handle_release(&client->handle);
>> +		return dev_err_probe(client->dev, ret, "QMI register failed for client 0x%x\n",
>> +			      client->id);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void qmi_tmd_client_remove(struct platform_device *pdev)
>> +{
>> +	struct qmi_tmd_client *client = platform_get_drvdata(pdev);
>> +
>> +	qmi_tmd_cleanup(client);
>> +}
>> +
>> +static const struct of_device_id qmi_tmd_device_table[] = {
>> +	{
>> +		.compatible = "qcom,qmi-cooling-cdsp",
>> +		.data = &((struct qmi_instance_data) { CDSP_INSTANCE_ID, "cdsp" }),
> Please use Linux coding style.
>
>> +	},
>> +	{}
>> +};
>> +MODULE_DEVICE_TABLE(of, qmi_tmd_device_table);
>> +
>> +static struct platform_driver qmi_tmd_device_driver = {
>> +	.probe = qmi_tmd_client_probe,
>> +	.remove = qmi_tmd_client_remove,
>> +	.driver = {
>> +		.name = "qcom-qmi-cooling",
>> +		.of_match_table = qmi_tmd_device_table,
>> +	},
>
> Best regards,
> Krzysztof

